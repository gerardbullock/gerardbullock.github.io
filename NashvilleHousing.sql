

/*
Cleaning Data in SQL Queries
*/


Select *
From NashvilleHousing

--------------------------------------------------------------------------------------------------------------------------

-- Standardize Date Format


Select saleDateConverted, CONVERT(Date,SaleDate)
From NashvilleHousing


Update NashvilleHousing
SET SaleDate = CONVERT(Date,SaleDate)

-- If it doesn't Update properly

ALTER TABLE NashvilleHousing
Add SaleDateConverted Date;

Update NashvilleHousing
SET SaleDateConverted = CONVERT(Date,SaleDate)


 --------------------------------------------------------------------------------------------------------------------------

-- Populate Property Address data

Select *
From NashvilleHousing
order by Parcel_ID



Select a.Parcel_ID, a.Property_Address, b.Parcel_ID, b.Property_Address, ISNULL(a.Property_Address,b.Property_Address)
From NashvilleHousing a
JOIN NashvilleHousing b
	on a.Parcel_ID = b.Parcel_ID
	AND a.[UniqueID ] <> b.[UniqueID ]
Where a.Property_Address is null


Update a
SET Property_Address = ISNULL(a.Property_Address,b.Property_Address)
From NashvilleHousing a
JOIN NashvilleHousing b
	on a.Parcel_ID = b.Parcel_ID
	AND a.[Unique_ID ] <> b.[Unique_ID ]
Where a.Property_Address is null




--------------------------------------------------------------------------------------------------------------------------

-- Breaking out Address into Individual Columns (Address, City, State)


Select Property_Address
From Nashville_Housing
--Where PropertyAddress is null
--order by ParcelID

SELECT
SUBSTRING(Property_Address, 1, CHARINDEX(',', Property_Address) -1 ) as Address
, SUBSTRING(Property_Address, CHARINDEX(',', Property_Address) + 1 , LEN(Property_Address)) as Address

From NashvilleHousing


ALTER TABLE NashvilleHousing
Add PropertySplitAddress Nvarchar(255);

Update NashvilleHousing
SET PropertySplitAddress = SUBSTRING(Property_Address, 1, CHARINDEX(',', Property_Address) -1 )


ALTER TABLE NashvilleHousing
Add PropertySplitCity Nvarchar(255);

Update NashvilleHousing
SET PropertySplitCity = SUBSTRING(Property_Address, CHARINDEX(',', Property_Address) + 1 , LEN(Property_Address))




Select *
From NashvilleHousing





Select OwnerAddress
From NashvilleHousing


Select
PARSENAME(REPLACE(Owner_Address, ',', '.') , 3)
,PARSENAME(REPLACE(Owner_Address, ',', '.') , 2)
,PARSENAME(REPLACE(Owner_Address, ',', '.') , 1)
From NashvilleHousing



ALTER TABLE NashvilleHousing
Add OwnerSplitAddress Nvarchar(255);

Update NashvilleHousing
SET OwnerSplitAddress = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 3)


ALTER TABLE NashvilleHousing
Add OwnerSplitCity Nvarchar(255);

Update NashvilleHousing
SET OwnerSplitCity = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 2)



ALTER TABLE NashvilleHousing
Add OwnerSplitState Nvarchar(255);

Update NashvilleHousing
SET OwnerSplitState = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 1)



Select *
From NashvilleHousing




--------------------------------------------------------------------------------------------------------------------------


-- Change Y and N to Yes and No in "Sold as Vacant" field


Select Distinct(Sold_As_Vacant), Count(Sold_As_Vacant)
From NashvilleHousing
Group by Sold_As_Vacant
order by 2




Select SoldAsVacant
, CASE When Sold_As_Vacant = 'Y' THEN 'Yes'
	   When Sold_As_Vacant = 'N' THEN 'No'
	   ELSE Sold_As_Vacant
	   END
From NashvilleHousing


Update NashvilleHousing
SET Sold_As_Vacant = CASE When Sold_As_Vacant = 'Y' THEN 'Yes'
	   When Sold_As_Vacant = 'N' THEN 'No'
	   ELSE Sold_As_Vacant
	   END






-----------------------------------------------------------------------------------------------------------------------------------------------------------

-- Remove Duplicates

WITH RowNumCTE AS(
Select *,
	ROW_NUMBER() OVER (
	PARTITION BY ParcelID,
				 PropertyAddress,
				 SalePrice,
				 SaleDate,
				 LegalReference
				 ORDER BY
					UniqueID
					) row_num

From PortfolioProject.dbo.NashvilleHousing
--order by ParcelID
)
Select *
From RowNumCTE
Where row_num > 1
Order by PropertyAddress



Select *
From NashvilleHousing




---------------------------------------------------------------------------------------------------------

-- Delete Unused Columns



Select *
From NashvilleHousing


ALTER TABLE NashvilleHousing
DROP COLUMN Owner_Address, Tax_District, Property_Address, SaleDateConverted, Suite
DROP COLUMN PropertySplitCity,PropertySplitAddress
