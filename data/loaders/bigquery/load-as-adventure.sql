-- Load as_adventure data
--
-- NOTE: if possible, create a project name `atscale-tutorial-data` first and run these scripts there
--
--
CREATE SCHEMA IF NOT EXISTS `as_adventure`;

LOAD DATA OVERWRITE as_adventure.datecustom (pk_date TIMESTAMP, datekey INT64, date_name STRING, year TIMESTAMP, year_name STRING, half_year TIMESTAMP, half_year_name STRING, quarter TIMESTAMP, quarter_name STRING, month TIMESTAMP, month_name STRING, week TIMESTAMP, week_name STRING, day_of_year INT64, day_of_year_name STRING, day_of_half_year INT64, day_of_half_year_name STRING, day_of_quarter INT64, day_of_quarter_name STRING, day_of_month INT64, day_of_month_name STRING, day_of_week INT64, day_of_week_name STRING, week_of_year INT64, week_of_year_name STRING, month_of_year INT64, month_of_year_name STRING, month_of_half_year INT64, month_of_half_year_name STRING, month_of_quarter INT64, month_of_quarter_name STRING, quarter_of_year INT64, quarter_of_year_name STRING, quarter_of_half_year INT64, quarter_of_half_year_name STRING, half_year_of_year INT64, half_year_of_year_name STRING, reporting_year TIMESTAMP, reporting_year_name STRING, reporting_half_year TIMESTAMP, reporting_half_year_name STRING, reporting_quarter TIMESTAMP, reporting_quarter_name STRING, reporting_month TIMESTAMP, reporting_month_name STRING, reporting_month_name2 STRING, reporting_week TIMESTAMP, reporting_week_name STRING, reporting_day TIMESTAMP, reporting_day_name STRING, reporting_day_of_year INT64, reporting_day_of_year_name STRING, reporting_day_of_half_year INT64, reporting_day_of_half_year_name STRING, reporting_day_of_quarter INT64, reporting_day_of_quarter_name STRING, reporting_day_of_month INT64, reporting_day_of_month_name STRING, reporting_day_of_week INT64, reporting_day_of_week_name STRING, reporting_week_of_year INT64, reporting_week_of_year_name STRING, reporting_week_of_half_year INT64, reporting_week_of_half_year_name STRING, reporting_week_of_quarter INT64, reporting_week_of_quarter_name STRING, reporting_week_of_month INT64, reporting_week_of_month_name STRING, reporting_month_of_year INT64, reporting_month_of_year_name STRING, reporting_month_of_half_year INT64, reporting_month_of_half_year_name STRING, reporting_month_of_quarter INT64, reporting_month_of_quarter_name STRING, reporting_quarter_of_year INT64, reporting_quarter_of_year_name STRING, reporting_quarter_of_half_year INT64, reporting_quarter_of_half_year_name STRING, reporting_half_year_of_year INT64, reporting_half_year_of_year_name STRING, iso_8601_year TIMESTAMP, iso_8601_year_name STRING, iso_8601_week TIMESTAMP, iso_8601_week_name STRING, iso_8601_day TIMESTAMP, iso_8601_day_name STRING, iso_8601_day_of_year INT64, iso_8601_day_of_year_name STRING, iso_8601_day_of_week INT64, iso_8601_day_of_week_name STRING, iso_8601_week_of_year INT64, iso_8601_week_of_year_name_reporting_day_ctl STRING, reporting_day_lykey TIMESTAMP, reporting_week_ctl TIMESTAMP, reporting_week_lykey TIMESTAMP, reporting_month_lykey TIMESTAMP, reporting_quarter_lykey TIMESTAMP, reporting_half_year_lykey TIMESTAMP, reporting_year_lykey TIMESTAMP) FROM FILES (format = 'CSV', field_delimiter = '\t', null_marker = '(null)', skip_leading_rows = 1, uris = ['gs://atscale_tutorial_data/as_adventure/as_adventure_table_AS_ADVENTURE.datecustom.csv']);

LOAD DATA OVERWRITE as_adventure.dim_geo_city (geographykey INT64, city STRING, statekey STRING, citystatekey STRING) FROM FILES (format = 'CSV', field_delimiter = '\t', null_marker = '(null)', skip_leading_rows = 1, uris = ['gs://atscale_tutorial_data/as_adventure/as_adventure_table_AS_ADVENTURE.dim_geo_city.csv']);

LOAD DATA OVERWRITE as_adventure.dim_geo_country (country STRING) FROM FILES (format = 'CSV', field_delimiter = '\t', null_marker = '(null)', skip_leading_rows = 1, uris = ['gs://atscale_tutorial_data/as_adventure/as_adventure_table_AS_ADVENTURE.dim_geo_country.csv']);

LOAD DATA OVERWRITE as_adventure.dim_geo_postalcode (geographykey INT64, postalcode STRING, country STRING, countrypostalcode STRING) FROM FILES (format = 'CSV', field_delimiter = '\t', null_marker = '(null)', skip_leading_rows = 1, uris = ['gs://atscale_tutorial_data/as_adventure/as_adventure_table_AS_ADVENTURE.dim_geo_postalcode.csv']);

LOAD DATA OVERWRITE as_adventure.dim_geo_state (statekey STRING, state STRING, country STRING) FROM FILES (format = 'CSV', field_delimiter = '\t', null_marker = '(null)', skip_leading_rows = 1, uris = ['gs://atscale_tutorial_data/as_adventure/as_adventure_table_AS_ADVENTURE.dim_geo_state.csv']);

LOAD DATA OVERWRITE as_adventure.dimcurrency (currencykey INT64, currencyalternatekey STRING, currencyname STRING) FROM FILES (format = 'CSV', field_delimiter = '\t', null_marker = '(null)', skip_leading_rows = 1, uris = ['gs://atscale_tutorial_data/as_adventure/as_adventure_table_AS_ADVENTURE.dimcurrency.csv']);

LOAD DATA OVERWRITE as_adventure.dimcustomer (customerkey INT64, geographykey INT64, firstname STRING, lastname STRING, gender STRING, datefirstpurchase STRING, occupation STRING, fullname STRING) FROM FILES (format = 'CSV', field_delimiter = '\t', null_marker = '(null)', skip_leading_rows = 1, uris = ['gs://atscale_tutorial_data/as_adventure/as_adventure_table_AS_ADVENTURE.dimcustomer.csv']);

LOAD DATA OVERWRITE as_adventure.dimgender (genderkey STRING, gendername STRING) FROM FILES (format = 'CSV', field_delimiter = '\t', null_marker = '(null)', skip_leading_rows = 1, uris = ['gs://atscale_tutorial_data/as_adventure/as_adventure_table_AS_ADVENTURE.dimgender.csv']);

LOAD DATA OVERWRITE as_adventure.dimgeography (geographykey INT64, city STRING, stateprovincename STRING, englishcountryregionname STRING, postalcode STRING) FROM FILES (format = 'CSV', field_delimiter = '\t', null_marker = '(null)', skip_leading_rows = 1, uris = ['gs://atscale_tutorial_data/as_adventure/as_adventure_table_AS_ADVENTURE.dimgeography.csv']);

LOAD DATA OVERWRITE as_adventure.dimorder (salesordernumber STRING, salesorderlinenumber INT64, ordername STRING, linename STRING, type STRING, currencykey INT64, currency_name STRING, ordernumberlinekey STRING) FROM FILES (format = 'CSV', field_delimiter = '\t', null_marker = '(null)', skip_leading_rows = 1, uris = ['gs://atscale_tutorial_data/as_adventure/as_adventure_table_AS_ADVENTURE.dimorder.csv']);

LOAD DATA OVERWRITE as_adventure.dimproduct (productkey INT64, englishproductname STRING, listprice FLOAT64, startdate STRING, productsubcategorykey INT64, productline STRING, productsubcategoryname STRING) FROM FILES (format = 'CSV', field_delimiter = '\t', null_marker = '(null)', skip_leading_rows = 1, uris = ['gs://atscale_tutorial_data/as_adventure/as_adventure_table_AS_ADVENTURE.dimproduct.csv']);

LOAD DATA OVERWRITE as_adventure.factinternetsales (salesordernumber STRING, salesorderlinenumber INT64, sales_reasons STRING, productkey INT64, product_info STRING, orderdatekey INT64, customerkey INT64, orderquantity INT64, unitprice FLOAT64, salesamount FLOAT64, taxamt FLOAT64, orderdate STRING, shipdatekey INT64, currencykey INT64) FROM FILES (format = 'CSV', field_delimiter = '\t', null_marker = '(null)', skip_leading_rows = 1, uris = ['gs://atscale_tutorial_data/as_adventure/as_adventure_table_AS_ADVENTURE.factinternetsales.csv']);
