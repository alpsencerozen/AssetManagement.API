/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2000)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2019
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [AssetManagement]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPrice]') AND type in (N'U'))
ALTER TABLE [dbo].[tblPrice] DROP CONSTRAINT IF EXISTS [FK_tblPrice_Currency]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPrice]') AND type in (N'U'))
ALTER TABLE [dbo].[tblPrice] DROP CONSTRAINT IF EXISTS [FK_tblPrice_Asset]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RolePersonnel]') AND type in (N'U'))
ALTER TABLE [dbo].[RolePersonnel] DROP CONSTRAINT IF EXISTS [FK_RolePersonnel_tblRole]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PersonnelTeam]') AND type in (N'U'))
ALTER TABLE [dbo].[PersonnelTeam] DROP CONSTRAINT IF EXISTS [FK_PersonnelTeam_Company]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PersonnelLoginInfo]') AND type in (N'U'))
ALTER TABLE [dbo].[PersonnelLoginInfo] DROP CONSTRAINT IF EXISTS [FK_PersonnelLoginInfo_PersonnelTeam]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PersonnelLoginInfo]') AND type in (N'U'))
ALTER TABLE [dbo].[PersonnelLoginInfo] DROP CONSTRAINT IF EXISTS [FK_PersonnelLoginInfo_LoginInfo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PageClaim]') AND type in (N'U'))
ALTER TABLE [dbo].[PageClaim] DROP CONSTRAINT IF EXISTS [FK_PageClaim_tblRole]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PageClaim]') AND type in (N'U'))
ALTER TABLE [dbo].[PageClaim] DROP CONSTRAINT IF EXISTS [FK_PageClaim_tblPage]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PageClaim]') AND type in (N'U'))
ALTER TABLE [dbo].[PageClaim] DROP CONSTRAINT IF EXISTS [FK_PageClaim_tblClaim]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Communication]') AND type in (N'U'))
ALTER TABLE [dbo].[Communication] DROP CONSTRAINT IF EXISTS [FK_Communication_PersonnelTeam]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Communication]') AND type in (N'U'))
ALTER TABLE [dbo].[Communication] DROP CONSTRAINT IF EXISTS [FK_Communication_CommType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comment]') AND type in (N'U'))
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT IF EXISTS [FK_Comment_PersonnelTeam]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comment]') AND type in (N'U'))
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT IF EXISTS [FK_Comment_Asset]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetWithoutBarcode]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetWithoutBarcode] DROP CONSTRAINT IF EXISTS [FK_AssetWithoutBarcode_Unit]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetWithoutBarcode]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetWithoutBarcode] DROP CONSTRAINT IF EXISTS [FK_AssetWithoutBarcode_Asset]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetStatus]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetStatus] DROP CONSTRAINT IF EXISTS [FK_AssetStatus_tblStatus]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetStatus]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetStatus] DROP CONSTRAINT IF EXISTS [FK_AssetStatus_PersonnelTeam]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetStatus]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetStatus] DROP CONSTRAINT IF EXISTS [FK_AssetStatus_Asset]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetOwner]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetOwner] DROP CONSTRAINT IF EXISTS [FK_AssetOwner_PersonnelTeam]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetOwner]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetOwner] DROP CONSTRAINT IF EXISTS [FK_AssetOwner_OwnerType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetOwner]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetOwner] DROP CONSTRAINT IF EXISTS [FK_AssetOwner_AssetActionOptions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetOwner]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetOwner] DROP CONSTRAINT IF EXISTS [FK_AssetOwner_Asset]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetCustomer]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetCustomer] DROP CONSTRAINT IF EXISTS [FK_AssetCustomer_Customer]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetCustomer]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetCustomer] DROP CONSTRAINT IF EXISTS [FK_AssetCustomer_Asset]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetBarcode]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetBarcode] DROP CONSTRAINT IF EXISTS [FK_AssetBarcode_Asset]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Asset]') AND type in (N'U'))
ALTER TABLE [dbo].[Asset] DROP CONSTRAINT IF EXISTS [FK_Asset_Company]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Asset]') AND type in (N'U'))
ALTER TABLE [dbo].[Asset] DROP CONSTRAINT IF EXISTS [FK_Asset_BrandModel]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Asset]') AND type in (N'U'))
ALTER TABLE [dbo].[Asset] DROP CONSTRAINT IF EXISTS [FK_Asset_AssetType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Asset]') AND type in (N'U'))
ALTER TABLE [dbo].[Asset] DROP CONSTRAINT IF EXISTS [FK_Asset_AssetGroup]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Asset]') AND type in (N'U'))
ALTER TABLE [dbo].[Asset] DROP CONSTRAINT IF EXISTS [FK_Asset_AssetActionOptions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ActionStatus]') AND type in (N'U'))
ALTER TABLE [dbo].[ActionStatus] DROP CONSTRAINT IF EXISTS [FK_ActionStatus_tblStatus]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ActionStatus]') AND type in (N'U'))
ALTER TABLE [dbo].[ActionStatus] DROP CONSTRAINT IF EXISTS [FK_ActionStatus_AssetAction]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Unit]') AND type in (N'U'))
ALTER TABLE [dbo].[Unit] DROP CONSTRAINT IF EXISTS [DF__Unit__isActive__690797E6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Unit]') AND type in (N'U'))
ALTER TABLE [dbo].[Unit] DROP CONSTRAINT IF EXISTS [DF__Unit__CreateDate__681373AD]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblStatus]') AND type in (N'U'))
ALTER TABLE [dbo].[tblStatus] DROP CONSTRAINT IF EXISTS [DF__tblStatus__isAct__65370702]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblStatus]') AND type in (N'U'))
ALTER TABLE [dbo].[tblStatus] DROP CONSTRAINT IF EXISTS [DF__tblStatus__Creat__6442E2C9]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblRole]') AND type in (N'U'))
ALTER TABLE [dbo].[tblRole] DROP CONSTRAINT IF EXISTS [DF__Role__isActive__5BAD9CC8]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblRole]') AND type in (N'U'))
ALTER TABLE [dbo].[tblRole] DROP CONSTRAINT IF EXISTS [DF__Role__CreateDate__5AB9788F]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPrice]') AND type in (N'U'))
ALTER TABLE [dbo].[tblPrice] DROP CONSTRAINT IF EXISTS [DF__tblPrice__isActi__634EBE90]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPrice]') AND type in (N'U'))
ALTER TABLE [dbo].[tblPrice] DROP CONSTRAINT IF EXISTS [DF__tblPrice__Create__625A9A57]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPage]') AND type in (N'U'))
ALTER TABLE [dbo].[tblPage] DROP CONSTRAINT IF EXISTS [DF__tblPage__isActiv__6166761E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPage]') AND type in (N'U'))
ALTER TABLE [dbo].[tblPage] DROP CONSTRAINT IF EXISTS [DF__tblPage__CreateD__607251E5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblClaim]') AND type in (N'U'))
ALTER TABLE [dbo].[tblClaim] DROP CONSTRAINT IF EXISTS [DF__tblClaim__isActi__5F7E2DAC]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblClaim]') AND type in (N'U'))
ALTER TABLE [dbo].[tblClaim] DROP CONSTRAINT IF EXISTS [DF__tblClaim__Create__5E8A0973]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RolePersonnel]') AND type in (N'U'))
ALTER TABLE [dbo].[RolePersonnel] DROP CONSTRAINT IF EXISTS [DF__RolePerso__isAct__5D95E53A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RolePersonnel]') AND type in (N'U'))
ALTER TABLE [dbo].[RolePersonnel] DROP CONSTRAINT IF EXISTS [DF__RolePerso__Creat__5CA1C101]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PersonnelTeam]') AND type in (N'U'))
ALTER TABLE [dbo].[PersonnelTeam] DROP CONSTRAINT IF EXISTS [DF__Personnel__isAct__55F4C372]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PersonnelTeam]') AND type in (N'U'))
ALTER TABLE [dbo].[PersonnelTeam] DROP CONSTRAINT IF EXISTS [DF__Personnel__Creat__55009F39]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PersonnelLoginInfo]') AND type in (N'U'))
ALTER TABLE [dbo].[PersonnelLoginInfo] DROP CONSTRAINT IF EXISTS [DF__Personnel__isAct__57DD0BE4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PersonnelLoginInfo]') AND type in (N'U'))
ALTER TABLE [dbo].[PersonnelLoginInfo] DROP CONSTRAINT IF EXISTS [DF__Personnel__Creat__56E8E7AB]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PageClaim]') AND type in (N'U'))
ALTER TABLE [dbo].[PageClaim] DROP CONSTRAINT IF EXISTS [DF__PageClaim__isAct__540C7B00]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PageClaim]') AND type in (N'U'))
ALTER TABLE [dbo].[PageClaim] DROP CONSTRAINT IF EXISTS [DF__PageClaim__Creat__531856C7]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OwnerType]') AND type in (N'U'))
ALTER TABLE [dbo].[OwnerType] DROP CONSTRAINT IF EXISTS [DF__OwnerType__isAct__5224328E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OwnerType]') AND type in (N'U'))
ALTER TABLE [dbo].[OwnerType] DROP CONSTRAINT IF EXISTS [DF__OwnerType__Creat__51300E55]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoginInfo]') AND type in (N'U'))
ALTER TABLE [dbo].[LoginInfo] DROP CONSTRAINT IF EXISTS [DF__LoginInfo__isAct__503BEA1C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoginInfo]') AND type in (N'U'))
ALTER TABLE [dbo].[LoginInfo] DROP CONSTRAINT IF EXISTS [DF__LoginInfo__Creat__4F47C5E3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Document]') AND type in (N'U'))
ALTER TABLE [dbo].[Document] DROP CONSTRAINT IF EXISTS [DF__Document__isActi__4E53A1AA]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Document]') AND type in (N'U'))
ALTER TABLE [dbo].[Document] DROP CONSTRAINT IF EXISTS [DF__Document__Create__4D5F7D71]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT IF EXISTS [DF__Customer__isActi__4C6B5938]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT IF EXISTS [DF__Customer__Create__4B7734FF]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Currency]') AND type in (N'U'))
ALTER TABLE [dbo].[Currency] DROP CONSTRAINT IF EXISTS [DF__Currency__isActi__4A8310C6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Currency]') AND type in (N'U'))
ALTER TABLE [dbo].[Currency] DROP CONSTRAINT IF EXISTS [DF__Currency__Create__498EEC8D]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Company]') AND type in (N'U'))
ALTER TABLE [dbo].[Company] DROP CONSTRAINT IF EXISTS [DF__Team__isActive__671F4F74]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Company]') AND type in (N'U'))
ALTER TABLE [dbo].[Company] DROP CONSTRAINT IF EXISTS [DF__Team__CreateDate__662B2B3B]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Communication]') AND type in (N'U'))
ALTER TABLE [dbo].[Communication] DROP CONSTRAINT IF EXISTS [DF__Communica__isAct__489AC854]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Communication]') AND type in (N'U'))
ALTER TABLE [dbo].[Communication] DROP CONSTRAINT IF EXISTS [DF__Communica__Creat__47A6A41B]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CommType]') AND type in (N'U'))
ALTER TABLE [dbo].[CommType] DROP CONSTRAINT IF EXISTS [DF__CommType__isActi__46B27FE2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CommType]') AND type in (N'U'))
ALTER TABLE [dbo].[CommType] DROP CONSTRAINT IF EXISTS [DF__CommType__Create__45BE5BA9]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comment]') AND type in (N'U'))
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT IF EXISTS [DF__Comment__isActiv__44CA3770]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comment]') AND type in (N'U'))
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT IF EXISTS [DF__Comment__CreateD__43D61337]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BrandModel]') AND type in (N'U'))
ALTER TABLE [dbo].[BrandModel] DROP CONSTRAINT IF EXISTS [DF__BrandMode__isAct__42E1EEFE]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BrandModel]') AND type in (N'U'))
ALTER TABLE [dbo].[BrandModel] DROP CONSTRAINT IF EXISTS [DF__BrandMode__Creat__41EDCAC5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetWithoutBarcode]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetWithoutBarcode] DROP CONSTRAINT IF EXISTS [DF__AssetWith__isAct__40F9A68C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetWithoutBarcode]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetWithoutBarcode] DROP CONSTRAINT IF EXISTS [DF__AssetWith__Creat__40058253]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetType]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetType] DROP CONSTRAINT IF EXISTS [DF__AssetType__isAct__3F115E1A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetType]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetType] DROP CONSTRAINT IF EXISTS [DF__AssetType__Creat__3E1D39E1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetStatus]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetStatus] DROP CONSTRAINT IF EXISTS [DF__AssetStat__isAct__3D2915A8]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetStatus]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetStatus] DROP CONSTRAINT IF EXISTS [DF__AssetStat__Creat__3C34F16F]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetOwner]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetOwner] DROP CONSTRAINT IF EXISTS [DF__AssetOwne__isAct__3B40CD36]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetOwner]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetOwner] DROP CONSTRAINT IF EXISTS [DF__AssetOwne__Creat__3A4CA8FD]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetGroup]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetGroup] DROP CONSTRAINT IF EXISTS [DF__AssetGrou__isAct__395884C4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetGroup]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetGroup] DROP CONSTRAINT IF EXISTS [DF__AssetGrou__Creat__3864608B]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetCustomer]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetCustomer] DROP CONSTRAINT IF EXISTS [DF__AssetCust__isAct__37703C52]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetCustomer]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetCustomer] DROP CONSTRAINT IF EXISTS [DF__AssetCust__Creat__367C1819]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetBarcode]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetBarcode] DROP CONSTRAINT IF EXISTS [DF__AssetBarc__isAct__3587F3E0]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetBarcode]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetBarcode] DROP CONSTRAINT IF EXISTS [DF__AssetBarc__Creat__3493CFA7]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetActionOptions]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetActionOptions] DROP CONSTRAINT IF EXISTS [DF_AssetActionOptions_isActive]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetActionOptions]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetActionOptions] DROP CONSTRAINT IF EXISTS [DF_AssetActionOptions_CreateDate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetAction]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetAction] DROP CONSTRAINT IF EXISTS [DF__AssetActi__isAct__339FAB6E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetAction]') AND type in (N'U'))
ALTER TABLE [dbo].[AssetAction] DROP CONSTRAINT IF EXISTS [DF__AssetActi__Creat__32AB8735]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Asset]') AND type in (N'U'))
ALTER TABLE [dbo].[Asset] DROP CONSTRAINT IF EXISTS [DF__Asset__isActive__31B762FC]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Asset]') AND type in (N'U'))
ALTER TABLE [dbo].[Asset] DROP CONSTRAINT IF EXISTS [DF__Asset__CreateDat__30C33EC3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Asset]') AND type in (N'U'))
ALTER TABLE [dbo].[Asset] DROP CONSTRAINT IF EXISTS [DF_Asset_RegistrationNumber]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ActionStatus]') AND type in (N'U'))
ALTER TABLE [dbo].[ActionStatus] DROP CONSTRAINT IF EXISTS [DF__ActionSta__isAct__2FCF1A8A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ActionStatus]') AND type in (N'U'))
ALTER TABLE [dbo].[ActionStatus] DROP CONSTRAINT IF EXISTS [DF__ActionSta__Creat__2EDAF651]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[Unit]
GO
/****** Object:  Table [dbo].[tblStatus]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[tblStatus]
GO
/****** Object:  Table [dbo].[tblRole]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[tblRole]
GO
/****** Object:  Table [dbo].[tblPrice]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[tblPrice]
GO
/****** Object:  Table [dbo].[tblPage]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[tblPage]
GO
/****** Object:  Table [dbo].[tblClaim]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[tblClaim]
GO
/****** Object:  Table [dbo].[RolePersonnel]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[RolePersonnel]
GO
/****** Object:  Table [dbo].[PersonnelTeam]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[PersonnelTeam]
GO
/****** Object:  Table [dbo].[PersonnelLoginInfo]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[PersonnelLoginInfo]
GO
/****** Object:  Table [dbo].[PageClaim]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[PageClaim]
GO
/****** Object:  Table [dbo].[OwnerType]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[OwnerType]
GO
/****** Object:  Table [dbo].[LoginInfo]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[LoginInfo]
GO
/****** Object:  Table [dbo].[Document]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[Document]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[Currency]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[Company]
GO
/****** Object:  Table [dbo].[Communication]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[Communication]
GO
/****** Object:  Table [dbo].[CommType]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[CommType]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[Comment]
GO
/****** Object:  Table [dbo].[BrandModel]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[BrandModel]
GO
/****** Object:  Table [dbo].[AssetWithoutBarcode]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[AssetWithoutBarcode]
GO
/****** Object:  Table [dbo].[AssetType]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[AssetType]
GO
/****** Object:  Table [dbo].[AssetStatus]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[AssetStatus]
GO
/****** Object:  Table [dbo].[AssetOwner]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[AssetOwner]
GO
/****** Object:  Table [dbo].[AssetGroup]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[AssetGroup]
GO
/****** Object:  Table [dbo].[AssetCustomer]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[AssetCustomer]
GO
/****** Object:  Table [dbo].[AssetBarcode]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[AssetBarcode]
GO
/****** Object:  Table [dbo].[AssetActionOptions]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[AssetActionOptions]
GO
/****** Object:  Table [dbo].[AssetAction]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[AssetAction]
GO
/****** Object:  Table [dbo].[Asset]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[Asset]
GO
/****** Object:  Table [dbo].[ActionStatus]    Script Date: 25.09.2022 11:35:29 ******/
DROP TABLE IF EXISTS [dbo].[ActionStatus]
GO
USE [master]
GO
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 25.09.2022 11:35:29 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyEventProcessingLogin##')
DROP LOGIN [##MS_PolicyEventProcessingLogin##]
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 25.09.2022 11:35:29 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyTsqlExecutionLogin##')
DROP LOGIN [##MS_PolicyTsqlExecutionLogin##]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 25.09.2022 11:35:29 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'BUILTIN\Users')
DROP LOGIN [BUILTIN\Users]
GO
/****** Object:  Login [DESKTOP-V3IJ85Q\alpse]    Script Date: 25.09.2022 11:35:29 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'DESKTOP-V3IJ85Q\alpse')
DROP LOGIN [DESKTOP-V3IJ85Q\alpse]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 25.09.2022 11:35:29 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
DROP LOGIN [NT AUTHORITY\SYSTEM]
GO
/****** Object:  Login [NT Service\MSSQL$SQLEXPRESS]    Script Date: 25.09.2022 11:35:29 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT Service\MSSQL$SQLEXPRESS')
DROP LOGIN [NT Service\MSSQL$SQLEXPRESS]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY$SQLEXPRESS]    Script Date: 25.09.2022 11:35:29 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\SQLTELEMETRY$SQLEXPRESS')
DROP LOGIN [NT SERVICE\SQLTELEMETRY$SQLEXPRESS]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 25.09.2022 11:35:29 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\SQLWriter')
DROP LOGIN [NT SERVICE\SQLWriter]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 25.09.2022 11:35:29 ******/
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\Winmgmt')
DROP LOGIN [NT SERVICE\Winmgmt]
GO
/****** Object:  Database [AssetManagement]    Script Date: 25.09.2022 11:35:29 ******/
DROP DATABASE IF EXISTS [AssetManagement]
GO
/****** Object:  Database [AssetManagement]    Script Date: 25.09.2022 11:35:29 ******/
CREATE DATABASE [AssetManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VarlikZimmet', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\VarlikZimmet.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VarlikZimmet_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\VarlikZimmet_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 COLLATE Turkish_CI_AS
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AssetManagement] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AssetManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AssetManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AssetManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AssetManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AssetManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AssetManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [AssetManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AssetManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AssetManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AssetManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AssetManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AssetManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AssetManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AssetManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AssetManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AssetManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AssetManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AssetManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AssetManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AssetManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AssetManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AssetManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AssetManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AssetManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [AssetManagement] SET  MULTI_USER 
GO
ALTER DATABASE [AssetManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AssetManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AssetManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AssetManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AssetManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AssetManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AssetManagement] SET QUERY_STORE = OFF
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 25.09.2022 11:35:29 ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 25.09.2022 11:35:29 ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY$SQLEXPRESS]    Script Date: 25.09.2022 11:35:29 ******/
CREATE LOGIN [NT SERVICE\SQLTELEMETRY$SQLEXPRESS] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQL$SQLEXPRESS]    Script Date: 25.09.2022 11:35:29 ******/
CREATE LOGIN [NT Service\MSSQL$SQLEXPRESS] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 25.09.2022 11:35:29 ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [DESKTOP-V3IJ85Q\alpse]    Script Date: 25.09.2022 11:35:29 ******/
CREATE LOGIN [DESKTOP-V3IJ85Q\alpse] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 25.09.2022 11:35:29 ******/
CREATE LOGIN [BUILTIN\Users] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 25.09.2022 11:35:29 ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'wpN8XpM7AZbZStWraMMGA2rFsO9c2j1hbWZWGFXmhcY=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 25.09.2022 11:35:29 ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'DFT0sZ7pb/D+hGJg/BUJKn6C8BbrNIeZS48gD0ZzTcQ=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER AUTHORIZATION ON DATABASE::[AssetManagement] TO [DESKTOP-V3IJ85Q\alpse]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQL$SQLEXPRESS]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [DESKTOP-V3IJ85Q\alpse]
GO
USE [AssetManagement]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
/****** Object:  Table [dbo].[ActionStatus]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetActionID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_ActionStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[ActionStatus] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Asset]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asset](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[hasBarcode] [bit] NULL,
	[RegistrationNumber] [uniqueidentifier] NULL,
	[CompanyID] [int] NOT NULL,
	[AssetGroupID] [int] NOT NULL,
	[AssetTypeID] [int] NOT NULL,
	[BrandModelID] [int] NOT NULL,
	[CurrencyID] [int] NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[Cost] [money] NOT NULL,
	[Guarantee] [bit] NULL,
	[EntryDate] [datetime] NULL,
	[RetireReason] [int] NULL,
	[RetireDate] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Asset] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Asset] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AssetAction]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetAction](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_AssetAction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[AssetAction] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AssetActionOptions]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetActionOptions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MasterID] [int] NULL,
	[isTitle] [bit] NULL,
	[Description] [nvarchar](100) COLLATE Turkish_CI_AS NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_AssetActionOptions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[AssetActionOptions] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AssetBarcode]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetBarcode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetID] [int] NOT NULL,
	[Barcode] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_AssetBarcode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[AssetBarcode] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AssetCustomer]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetCustomer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_AssetCustomer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[AssetCustomer] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AssetGroup]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_AssetGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[AssetGroup] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AssetOwner]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetOwner](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetID] [int] NOT NULL,
	[OwnerTypeID] [int] NOT NULL,
	[OwnerID] [int] NOT NULL,
	[DebitReason] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_AssetOwner] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[AssetOwner] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AssetStatus]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetID] [int] NOT NULL,
	[PersonnelID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
	[Note] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[Date] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_AssetStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[AssetStatus] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AssetType]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_AssetType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[AssetType] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AssetWithoutBarcode]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetWithoutBarcode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetID] [int] NOT NULL,
	[UnitID] [int] NOT NULL,
	[Quantity] [decimal](18, 0) NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_AssetWithoutBarcode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[AssetWithoutBarcode] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[BrandModel]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrandModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MasterID] [int] NULL,
	[isBrand] [bit] NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_BrandModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[BrandModel] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetID] [int] NOT NULL,
	[PersonnelID] [int] NOT NULL,
	[Note] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[Date] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Comment] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[CommType]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_CommType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[CommType] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Communication]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Communication](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonnelID] [int] NOT NULL,
	[CommTypeID] [int] NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Communication] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Communication] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Company]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Company] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Currency] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SubscriptionNumber] [uniqueidentifier] NULL,
	[FirstName] [nvarchar](50) COLLATE Turkish_CI_AS NOT NULL,
	[LastName] [nvarchar](50) COLLATE Turkish_CI_AS NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Customer] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Document]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Document](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetID] [int] NOT NULL,
	[PageCode] [int] NULL,
	[FilePath] [nvarchar](max) COLLATE Turkish_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Document] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[LoginInfo]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoginInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) COLLATE Turkish_CI_AS NOT NULL,
	[PasswordSalt] [varbinary](max) NOT NULL,
	[PasswordHash] [varbinary](max) NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_LoginInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[LoginInfo] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[OwnerType]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OwnerType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_OwnerType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[OwnerType] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[PageClaim]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageClaim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[PageID] [int] NOT NULL,
	[ClaimID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_PageClaim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[PageClaim] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[PersonnelLoginInfo]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonnelLoginInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonnelID] [int] NOT NULL,
	[LoginInfoID] [int] NOT NULL,
	[Date] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_PersonnelLoginInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[PersonnelLoginInfo] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[PersonnelTeam]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonnelTeam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MasterID] [int] NULL,
	[isTeam] [bit] NOT NULL,
	[Name] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[CompanyID] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_PersonnelTeam] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[PersonnelTeam] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[RolePersonnel]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePersonnel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonnelID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[Date] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_RolePersonnel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[RolePersonnel] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tblClaim]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClaim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_tblClaim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tblClaim] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tblPage]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_tblPage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tblPage] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tblPrice]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPrice](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetID] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[CurrencyID] [int] NOT NULL,
	[Date] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_tblPrice] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tblPrice] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tblRole]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRole](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_tblRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tblRole] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tblStatus]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_tblStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tblStatus] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 25.09.2022 11:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) COLLATE Turkish_CI_AS NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Turkish_CI_AS NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Unit] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[ActionStatus] ON 

INSERT [dbo].[ActionStatus] ([ID], [AssetActionID], [StatusID], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (1, 1, 2, CAST(N'2022-03-31T23:20:01.117' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[ActionStatus] ([ID], [AssetActionID], [StatusID], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (2, 2, 1, CAST(N'2022-03-31T23:20:22.397' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[ActionStatus] ([ID], [AssetActionID], [StatusID], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (3, 2, 2, CAST(N'2022-03-31T23:20:31.857' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[ActionStatus] ([ID], [AssetActionID], [StatusID], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (4, 3, 2, CAST(N'2022-03-31T23:20:48.737' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[ActionStatus] ([ID], [AssetActionID], [StatusID], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (5, 4, 3, CAST(N'2022-03-31T23:21:02.897' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[ActionStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Asset] ON 

INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (1, 1, N'00000000-0000-0000-0000-000000000000', 1, 3, 1, 2, 2, N'not', 100.0000, 1, CAST(N'2022-04-04T05:07:00.000' AS DateTime), NULL, NULL, NULL, NULL, CAST(N'2022-04-04T05:07:44.037' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (2, 1, N'8b2cd091-0c83-42bc-af9d-06b9ba41ec3c', 1, 1, 2, 3, 2, N'Bilgisayar', 2000.0000, 1, CAST(N'2022-04-04T17:01:00.000' AS DateTime), NULL, NULL, NULL, NULL, CAST(N'2022-04-04T17:02:24.343' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (3, 1, N'8b2cd091-0c83-42bc-af9d-06b9ba41ec4c', 1, 3, 1, 5, 1, N'Samsung Telefon', 1000.0000, 0, CAST(N'2022-04-04T05:07:00.000' AS DateTime), NULL, NULL, NULL, NULL, CAST(N'2022-05-19T19:23:26.160' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (4, 1, N'8b2cd091-0c83-42bc-af9d-06b9ba41ec2c', 1, 3, 2, 3, 1, N'Zimmet İçin', 20020.0000, 0, CAST(N'2022-04-04T05:13:00.000' AS DateTime), NULL, NULL, NULL, NULL, CAST(N'2022-04-07T03:27:44.227' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (5, 1, N'9477ad7e-1860-4774-8ef5-8223cbcca55a', 1, 1, 1, 6, 1, N'Satış için', 10000.0000, 1, CAST(N'2022-04-04T06:04:00.000' AS DateTime), NULL, NULL, NULL, NULL, CAST(N'2022-04-07T11:59:15.380' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (6, 1, N'f4db9e6c-df7b-45ae-ba8a-dd091706f966', 1, 3, 1, 11, 2, N'deneme2', 1100.0000, 0, CAST(N'2022-04-06T02:45:00.000' AS DateTime), NULL, NULL, NULL, NULL, CAST(N'2022-04-07T10:59:20.297' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (7, 1, N'b08af29c-c212-4266-9900-14ba72151c0d', 1, 3, 2, 13, 3, N'validation deneme', 200.0000, 1, CAST(N'2022-04-06T17:42:00.000' AS DateTime), NULL, NULL, NULL, NULL, CAST(N'2022-04-06T17:43:19.057' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (8, 1, N'1ba83936-054c-43e2-a2b0-34ed9a0f05e3', 1, 3, 1, 9, 1, NULL, 100.0000, 1, CAST(N'2022-04-06T11:59:00.000' AS DateTime), NULL, NULL, NULL, NULL, CAST(N'2022-05-19T19:24:47.717' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (9, 1, N'583d92b4-e742-4dae-8654-2d90b3675ecd', 1, 1, 2, 3, 2, N'Bilgisayar', 2000.0000, 0, CAST(N'2022-04-04T05:01:00.000' AS DateTime), NULL, NULL, CAST(N'2022-04-07T02:12:13.997' AS DateTime), NULL, CAST(N'2022-04-07T02:12:13.997' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (10, 1, N'96918a27-f5e0-4c7f-adbe-e1be45dcb31c', 1, 3, 1, 6, 1, N'Samsung Telefon', 1000.0000, 0, CAST(N'2022-04-07T02:13:00.000' AS DateTime), NULL, NULL, CAST(N'2022-04-07T02:13:29.333' AS DateTime), NULL, CAST(N'2022-04-07T02:13:29.333' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (11, 1, N'9f7d4a79-20d2-4e70-9b0d-a39ab945da20', 1, 1, 2, 3, 2, N'Bilgisayar', 2000.0000, 1, CAST(N'2022-04-04T05:01:00.000' AS DateTime), NULL, NULL, CAST(N'2022-04-07T03:00:24.047' AS DateTime), NULL, CAST(N'2022-04-07T03:00:24.047' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (12, 1, N'a203152c-7b2a-49cb-8927-cef7b8597aaa', 1, 3, 1, 11, 2, N'deneme', 1000.0000, 0, CAST(N'2022-04-07T03:04:00.000' AS DateTime), NULL, NULL, CAST(N'2022-04-07T03:04:34.257' AS DateTime), NULL, CAST(N'2022-04-07T03:04:34.257' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (13, 1, N'bac362fd-f4e1-4499-ac70-765ec840199c', 1, 3, 1, 11, 2, N'deneme', 1010.0000, 1, CAST(N'2022-04-06T02:45:00.000' AS DateTime), NULL, NULL, CAST(N'2022-04-07T03:09:05.287' AS DateTime), NULL, CAST(N'2022-04-07T03:09:05.287' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (14, 1, N'976a5d68-59d9-408c-8af0-f7ff6421bd6a', 1, 3, 1, 11, 2, N'deneme', 1020.0000, 0, CAST(N'2022-04-06T02:45:00.000' AS DateTime), NULL, NULL, CAST(N'2022-04-07T03:13:25.057' AS DateTime), NULL, CAST(N'2022-04-07T03:13:25.057' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (15, 1, N'a29d2719-d9ac-4ad9-997b-7afd015f78d9', 1, 3, 1, 8, 1, N'Zimmet Ürünü', 10000.0000, 0, CAST(N'2022-04-07T04:49:00.000' AS DateTime), NULL, NULL, CAST(N'2022-04-07T16:50:26.130' AS DateTime), NULL, CAST(N'2022-04-07T16:50:43.560' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (16, 1, N'fcce0ade-cf88-4e59-b6ab-9c2bbde75029', 1, 1, 2, 13, 2, N'Hp Bilgisayar', 1000.0000, 1, CAST(N'2022-04-07T04:57:00.000' AS DateTime), NULL, NULL, CAST(N'2022-04-07T16:58:27.850' AS DateTime), NULL, CAST(N'2022-05-14T12:57:45.873' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (17, 1, N'e467f514-329e-4f34-ace6-df2a8e977325', 1, 1, 1, 11, 2, NULL, 100.0000, 0, CAST(N'2022-05-14T06:00:00.000' AS DateTime), NULL, NULL, CAST(N'2022-05-14T18:01:18.230' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (18, 1, N'39fe3d87-6428-4270-a92f-7b0c88edfe25', 1, 3, 2, 14, 2, NULL, 1200.0000, 1, CAST(N'2022-05-14T06:37:00.000' AS DateTime), NULL, NULL, CAST(N'2022-05-14T18:37:45.153' AS DateTime), NULL, CAST(N'2022-05-14T18:38:44.400' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (19, 1, N'ecd71a7b-90d6-4e44-b523-e7f8ff0ac072', 1, 3, 2, 3, 2, NULL, 1200.0000, 1, CAST(N'2022-05-15T11:05:00.000' AS DateTime), NULL, NULL, CAST(N'2022-05-15T23:06:37.477' AS DateTime), NULL, CAST(N'2022-05-20T02:26:41.230' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (20, 1, N'cdde429f-e85d-446a-a000-3d8064899210', 1, 1, 1, 6, 2, NULL, 1200.0000, 1, CAST(N'2022-05-19T09:35:00.000' AS DateTime), NULL, NULL, CAST(N'2022-05-19T21:37:00.100' AS DateTime), NULL, CAST(N'2022-05-20T02:02:15.980' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (21, 1, N'9b30fef9-7123-4ca6-92ca-d5cebffa5352', 1, 3, 1, 11, 3, NULL, 120.0000, 0, CAST(N'2022-05-19T21:53:00.000' AS DateTime), NULL, NULL, CAST(N'2022-05-19T21:53:36.373' AS DateTime), NULL, CAST(N'2022-05-20T01:56:16.713' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (22, 1, N'86d62ad3-b24a-4be8-8912-2eab6ddf14d2', 1, 1, 1, 9, 2, NULL, 250.0000, 1, CAST(N'2022-05-20T02:03:00.000' AS DateTime), NULL, NULL, CAST(N'2022-05-20T02:04:37.430' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (23, 0, N'd37ffc33-1f33-444a-aa02-2edcb84eedeb', 1, 2, 3, 2, 2, N'kılıf', 1.0000, 0, CAST(N'2022-06-25T17:20:00.000' AS DateTime), NULL, NULL, CAST(N'2022-06-25T17:21:08.193' AS DateTime), NULL, CAST(N'2022-07-11T17:46:06.130' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (24, 1, N'c69fc184-dc97-4e40-8706-f69c4453a546', 1, 3, 1, 11, 1, NULL, 1000.0000, 1, CAST(N'2022-06-25T17:24:00.000' AS DateTime), NULL, NULL, CAST(N'2022-06-25T17:25:02.167' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (25, 0, N'd5e3d3a7-240e-43a4-86e2-267956576cd7', 1, 2, 3, 5, 2, N's21 kılıf', 20.0000, 0, CAST(N'2022-07-11T17:32:00.000' AS DateTime), NULL, NULL, CAST(N'2022-07-11T17:33:19.293' AS DateTime), NULL, CAST(N'2022-07-12T15:02:32.973' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (26, 1, N'34b27456-4497-45dc-bf14-d88ece0d8ba4', 1, 3, 2, 7, 2, N'personel macbook', 1200.0000, 0, CAST(N'2022-07-11T17:36:00.000' AS DateTime), NULL, NULL, CAST(N'2022-07-11T17:37:03.270' AS DateTime), NULL, CAST(N'2022-07-12T23:38:36.550' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (27, 1, N'365ebcf1-8a23-46af-9508-e85365d4fdd4', 1, 3, 1, 6, 2, N'iPhone11', 500.0000, 1, CAST(N'2022-07-12T16:10:00.000' AS DateTime), NULL, NULL, CAST(N'2022-07-12T16:11:42.317' AS DateTime), NULL, CAST(N'2022-07-12T16:31:00.633' AS DateTime), NULL, 1)
INSERT [dbo].[Asset] ([ID], [hasBarcode], [RegistrationNumber], [CompanyID], [AssetGroupID], [AssetTypeID], [BrandModelID], [CurrencyID], [Description], [Cost], [Guarantee], [EntryDate], [RetireReason], [RetireDate], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (28, 0, N'06d85828-fc21-4700-ad07-c6a2bc96df99', 1, 1, 3, 11, 2, N'xiaomi kılıf', 20.0000, 0, CAST(N'2022-07-12T16:16:00.000' AS DateTime), NULL, NULL, CAST(N'2022-07-12T16:16:47.007' AS DateTime), NULL, CAST(N'2022-07-12T16:29:56.793' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Asset] OFF
GO
SET IDENTITY_INSERT [dbo].[AssetAction] ON 

INSERT [dbo].[AssetAction] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (1, N'Tüket', CAST(N'2022-03-31T23:17:18.387' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetAction] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (2, N'Zimmet Ata', CAST(N'2022-03-31T23:17:23.303' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetAction] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (3, N'Depoya Ata', CAST(N'2022-03-31T23:17:31.080' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetAction] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (4, N'İade Et', CAST(N'2022-03-31T23:17:35.880' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetAction] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (5, N'İptal Et', CAST(N'2022-03-31T23:17:41.683' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetAction] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (6, N'Emekli Et', CAST(N'2022-03-31T23:17:49.190' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetAction] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (7, N'Kayıp/Çalıntı Bildir', CAST(N'2022-03-31T23:18:01.417' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetAction] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (8, N'Yorum Yap', CAST(N'2022-03-31T23:18:08.327' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[AssetAction] OFF
GO
SET IDENTITY_INSERT [dbo].[AssetActionOptions] ON 

INSERT [dbo].[AssetActionOptions] ([ID], [MasterID], [isTitle], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (1, 1, 1, N'Zimmet Nedeni', CAST(N'2022-03-31T23:29:12.663' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetActionOptions] ([ID], [MasterID], [isTitle], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (2, 1, 0, N'İşe Giriş', CAST(N'2022-03-31T23:29:50.263' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetActionOptions] ([ID], [MasterID], [isTitle], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (3, 1, 0, N'Yenileme', CAST(N'2022-03-31T23:30:10.590' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetActionOptions] ([ID], [MasterID], [isTitle], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (4, 4, 1, N'Zimmet Çıkarma Sebebi', CAST(N'2022-03-31T23:30:45.770' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetActionOptions] ([ID], [MasterID], [isTitle], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (5, 4, 0, N'Arızalanma', CAST(N'2022-03-31T23:31:05.547' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetActionOptions] ([ID], [MasterID], [isTitle], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (6, 4, 0, N'Eskime', CAST(N'2022-03-31T23:31:44.410' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[AssetActionOptions] OFF
GO
SET IDENTITY_INSERT [dbo].[AssetBarcode] ON 

INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (1, 1, N'barkod123123', CAST(N'2022-04-04T05:07:44.220' AS DateTime), NULL, CAST(N'2022-04-04T05:07:44.217' AS DateTime), NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (2, 2, N'barkod222333', CAST(N'2022-04-04T17:02:24.513' AS DateTime), NULL, CAST(N'2022-04-04T17:02:24.513' AS DateTime), NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (3, 3, N'barkod333444', CAST(N'2022-04-04T17:08:05.823' AS DateTime), NULL, CAST(N'2022-04-04T17:08:05.823' AS DateTime), NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (4, 4, N'112233', CAST(N'2022-04-04T17:13:45.317' AS DateTime), NULL, CAST(N'2022-04-04T17:13:45.317' AS DateTime), NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (5, 5, N'333444', CAST(N'2022-04-04T18:05:14.107' AS DateTime), NULL, CAST(N'2022-04-04T18:05:14.107' AS DateTime), NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (6, 6, N'2223444v', CAST(N'2022-04-06T14:45:42.297' AS DateTime), NULL, CAST(N'2022-04-06T14:45:42.297' AS DateTime), NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (7, 7, N'barkod1010', CAST(N'2022-04-06T17:43:19.237' AS DateTime), NULL, CAST(N'2022-04-06T17:43:19.237' AS DateTime), NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (8, 8, N'bar123', CAST(N'2022-04-07T00:00:29.677' AS DateTime), NULL, CAST(N'2022-04-07T00:00:29.677' AS DateTime), NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (9, 9, N'barkod222334', CAST(N'2022-04-07T02:12:14.140' AS DateTime), NULL, CAST(N'2022-04-07T02:12:14.140' AS DateTime), NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (10, 10, N'barkod333445', CAST(N'2022-04-07T02:13:29.340' AS DateTime), NULL, CAST(N'2022-04-07T02:13:29.340' AS DateTime), NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (11, 11, N'barkod222334', CAST(N'2022-04-07T03:00:24.193' AS DateTime), NULL, CAST(N'2022-04-07T03:00:24.193' AS DateTime), NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (12, 12, N'2223444z', CAST(N'2022-04-07T03:04:34.410' AS DateTime), NULL, CAST(N'2022-04-07T03:04:34.410' AS DateTime), NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (13, 13, N'2223444y', CAST(N'2022-04-07T03:09:05.433' AS DateTime), NULL, CAST(N'2022-04-07T03:09:05.433' AS DateTime), NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (14, 14, N'2223444x', CAST(N'2022-04-07T03:13:25.210' AS DateTime), NULL, CAST(N'2022-04-07T03:13:25.210' AS DateTime), NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (15, 15, N'deneme123', CAST(N'2022-04-07T16:50:26.253' AS DateTime), NULL, CAST(N'2022-04-07T16:50:26.253' AS DateTime), NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (16, 16, N'1234567', CAST(N'2022-04-07T16:58:28.010' AS DateTime), NULL, CAST(N'2022-04-07T16:58:28.010' AS DateTime), NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (17, 17, N'barkod1405-1', CAST(N'2022-05-14T18:01:18.387' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (18, 18, N'barkod1405-2', CAST(N'2022-05-14T18:37:45.313' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (19, 19, N'barkod1505-1', CAST(N'2022-05-15T23:06:37.640' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (20, 20, N'barkod1905-1', CAST(N'2022-05-19T21:37:00.230' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (21, 21, N'barkod1905-2', CAST(N'2022-05-19T21:53:36.503' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (22, 22, N'barkod2005-1', CAST(N'2022-05-20T02:04:37.480' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (23, 24, N'barkod2506-1', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (24, 26, N'barkod1107-1', CAST(N'2022-07-11T17:37:03.277' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetBarcode] ([ID], [AssetID], [Barcode], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (25, 27, N'barkod1207-1', CAST(N'2022-07-12T16:11:42.470' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[AssetBarcode] OFF
GO
SET IDENTITY_INSERT [dbo].[AssetGroup] ON 

INSERT [dbo].[AssetGroup] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (1, N'Turkcell Seri Bazlı Ürün', CAST(N'2022-03-31T23:07:44.757' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (2, N'Sarf Malzeme Ürün', CAST(N'2022-03-31T23:07:55.877' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetGroup] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (3, N'Personele Zimmetlenen Ürün', CAST(N'2022-03-31T23:08:06.190' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[AssetGroup] OFF
GO
SET IDENTITY_INSERT [dbo].[AssetStatus] ON 

INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (1, 1, 2, 1, N'İlk giriş', CAST(N'2022-04-04T05:07:44.257' AS DateTime), NULL, NULL, CAST(N'2022-04-04T05:07:44.257' AS DateTime), NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (2, 2, 2, 1, N'İlk giriş', CAST(N'2022-04-04T17:02:24.550' AS DateTime), NULL, NULL, CAST(N'2022-04-04T17:02:24.550' AS DateTime), NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (3, 3, 2, 1, N'İlk giriş', CAST(N'2022-04-04T17:08:05.863' AS DateTime), NULL, NULL, CAST(N'2022-04-04T17:08:05.863' AS DateTime), NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (4, 4, 2, 1, N'İlk giriş', CAST(N'2022-04-04T17:13:45.350' AS DateTime), NULL, NULL, CAST(N'2022-04-04T17:13:45.350' AS DateTime), NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (5, 5, 2, 1, N'İlk giriş', CAST(N'2022-04-04T18:05:14.143' AS DateTime), NULL, NULL, CAST(N'2022-04-04T18:05:14.143' AS DateTime), NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (6, 6, 2, 1, N'İlk giriş', CAST(N'2022-04-06T14:45:42.330' AS DateTime), NULL, NULL, CAST(N'2022-04-06T14:45:42.330' AS DateTime), NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (7, 7, 2, 1, N'İlk giriş', CAST(N'2022-04-06T17:43:19.277' AS DateTime), NULL, NULL, CAST(N'2022-04-06T17:43:19.277' AS DateTime), NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (8, 8, 2, 1, N'İlk giriş', CAST(N'2022-04-07T00:00:29.713' AS DateTime), NULL, NULL, CAST(N'2022-04-07T00:00:29.713' AS DateTime), NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (9, 9, 2, 1, N'İlk giriş', CAST(N'2022-04-07T02:12:14.177' AS DateTime), NULL, NULL, CAST(N'2022-04-07T02:12:14.177' AS DateTime), NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (10, 10, 2, 1, N'İlk giriş', CAST(N'2022-04-07T02:13:29.347' AS DateTime), NULL, NULL, CAST(N'2022-04-07T02:13:29.347' AS DateTime), NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (11, 11, 2, 1, N'İlk giriş', CAST(N'2022-04-07T03:00:24.230' AS DateTime), NULL, NULL, CAST(N'2022-04-07T03:00:24.230' AS DateTime), NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (12, 12, 2, 1, N'İlk giriş', CAST(N'2022-04-07T03:04:34.447' AS DateTime), NULL, NULL, CAST(N'2022-04-07T03:04:34.447' AS DateTime), NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (13, 13, 2, 1, N'İlk giriş', CAST(N'2022-04-07T03:09:05.470' AS DateTime), NULL, NULL, CAST(N'2022-04-07T03:09:05.470' AS DateTime), NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (14, 14, 2, 1, N'İlk giriş', CAST(N'2022-04-07T03:13:25.247' AS DateTime), NULL, NULL, CAST(N'2022-04-07T03:13:25.247' AS DateTime), NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (15, 15, 2, 1, N'İlk giriş', CAST(N'2022-04-07T16:50:26.287' AS DateTime), NULL, NULL, CAST(N'2022-04-07T16:50:26.287' AS DateTime), NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (16, 16, 2, 1, N'İlk giriş', CAST(N'2022-04-07T16:58:28.050' AS DateTime), NULL, NULL, CAST(N'2022-04-07T16:58:28.047' AS DateTime), NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (17, 17, 2, 1, N'İlk giriş', CAST(N'2022-05-14T18:01:18.427' AS DateTime), CAST(N'2022-05-14T18:01:18.427' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (18, 18, 2, 1, N'İlk giriş', CAST(N'2022-05-14T18:37:45.347' AS DateTime), CAST(N'2022-05-14T18:37:45.347' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (19, 19, 2, 1, N'İlk giriş', CAST(N'2022-05-15T23:06:37.673' AS DateTime), CAST(N'2022-05-15T23:06:37.673' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (20, 20, 2, 1, N'İlk giriş', CAST(N'2022-05-19T21:37:00.267' AS DateTime), CAST(N'2022-05-19T21:37:00.267' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (21, 21, 2, 1, N'İlk giriş', CAST(N'2022-05-19T21:53:36.533' AS DateTime), CAST(N'2022-05-19T21:53:36.533' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (22, 22, 2, 1, N'İlk giriş', CAST(N'2022-05-20T02:04:37.493' AS DateTime), CAST(N'2022-05-20T02:04:37.493' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (23, 23, 2, 1, N'İlk giriş', CAST(N'2022-06-25T17:21:08.417' AS DateTime), CAST(N'2022-06-25T17:21:08.417' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (24, 24, 2, 1, N'İlk giriş', CAST(N'2022-06-25T17:25:02.190' AS DateTime), CAST(N'2022-06-25T17:25:02.190' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (25, 25, 2, 1, N'İlk giriş', CAST(N'2022-07-11T17:33:19.490' AS DateTime), CAST(N'2022-07-11T17:33:19.490' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (26, 26, 2, 1, N'İlk giriş', CAST(N'2022-07-11T17:37:03.290' AS DateTime), CAST(N'2022-07-11T17:37:03.290' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (27, 27, 2, 1, N'İlk giriş', CAST(N'2022-07-12T16:11:42.503' AS DateTime), CAST(N'2022-07-12T16:11:42.503' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetStatus] ([ID], [AssetID], [PersonnelID], [StatusID], [Note], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (28, 28, 2, 1, N'İlk giriş', CAST(N'2022-07-12T16:16:47.033' AS DateTime), CAST(N'2022-07-12T16:16:47.033' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[AssetStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[AssetType] ON 

INSERT [dbo].[AssetType] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (1, N'Telefon', CAST(N'2022-03-31T22:19:02.893' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetType] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (2, N'Bilgisayar', CAST(N'2022-03-31T22:19:10.057' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetType] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (3, N'Telefon Kılıfı', NULL, NULL, CAST(N'2022-04-01T00:30:16.937' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[AssetType] OFF
GO
SET IDENTITY_INSERT [dbo].[AssetWithoutBarcode] ON 

INSERT [dbo].[AssetWithoutBarcode] ([ID], [AssetID], [UnitID], [Quantity], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (1, 23, 6, CAST(10 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[AssetWithoutBarcode] ([ID], [AssetID], [UnitID], [Quantity], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (2, 25, 6, CAST(5 AS Decimal(18, 0)), CAST(N'2022-07-11T17:33:19.453' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[AssetWithoutBarcode] ([ID], [AssetID], [UnitID], [Quantity], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (3, 28, 6, CAST(10 AS Decimal(18, 0)), CAST(N'2022-07-12T16:16:47.013' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[AssetWithoutBarcode] OFF
GO
SET IDENTITY_INSERT [dbo].[BrandModel] ON 

INSERT [dbo].[BrandModel] ([ID], [MasterID], [isBrand], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (1, 1, 1, N'Apple', CAST(N'2022-03-31T22:55:48.750' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[BrandModel] ([ID], [MasterID], [isBrand], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (2, 1, 0, N'iPhone 13', CAST(N'2022-03-31T22:56:22.247' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[BrandModel] ([ID], [MasterID], [isBrand], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (3, 1, 0, N'MacBook Air', CAST(N'2022-03-31T22:58:16.053' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[BrandModel] ([ID], [MasterID], [isBrand], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (4, 4, 1, N'Samsung', CAST(N'2022-03-31T22:58:34.207' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[BrandModel] ([ID], [MasterID], [isBrand], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (5, 4, 0, N'Galaxy S21', CAST(N'2022-03-31T23:00:17.117' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[BrandModel] ([ID], [MasterID], [isBrand], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (6, 1, 0, N'iPhone 11', CAST(N'2022-04-04T17:11:45.570' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[BrandModel] ([ID], [MasterID], [isBrand], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (7, 1, 0, N'MacBook Pro', CAST(N'2022-04-04T17:12:22.483' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[BrandModel] ([ID], [MasterID], [isBrand], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (8, 4, 0, N'Galaxy A52', CAST(N'2022-04-06T13:27:43.990' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[BrandModel] ([ID], [MasterID], [isBrand], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (9, 4, 0, N'Galaxy A32', CAST(N'2022-04-06T13:27:59.047' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[BrandModel] ([ID], [MasterID], [isBrand], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (10, 10, 1, N'Xiaomi', CAST(N'2022-04-06T13:28:20.520' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[BrandModel] ([ID], [MasterID], [isBrand], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (11, 10, 0, N'Redmi Note 10S', CAST(N'2022-04-06T13:29:15.310' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[BrandModel] ([ID], [MasterID], [isBrand], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (12, 12, 1, N'HP', CAST(N'2022-04-06T13:29:30.783' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[BrandModel] ([ID], [MasterID], [isBrand], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (13, 12, 0, N'HP 15s-fq-2062nt', CAST(N'2022-04-06T13:31:04.690' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[BrandModel] ([ID], [MasterID], [isBrand], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (14, 12, 0, N'HP 15-dw3044nt', CAST(N'2022-04-06T13:31:37.267' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[BrandModel] OFF
GO
SET IDENTITY_INSERT [dbo].[CommType] ON 

INSERT [dbo].[CommType] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (1, N'Cep Telefonu', CAST(N'2022-03-31T23:24:23.913' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[CommType] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (2, N'İş Telefonu', CAST(N'2022-03-31T23:24:34.450' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[CommType] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (3, N'E-mail', CAST(N'2022-03-31T23:25:09.683' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[CommType] OFF
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (1, N'Turkcell', CAST(N'2022-03-31T23:03:52.920' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Company] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (2, N'Sahibinden', CAST(N'2022-04-05T11:12:40.933' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[Currency] ON 

INSERT [dbo].[Currency] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (1, N'TRY', CAST(N'2022-03-31T23:01:36.143' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Currency] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (2, N'USD', CAST(N'2022-03-31T23:01:39.663' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Currency] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (3, N'EUR', NULL, NULL, CAST(N'2022-04-01T01:00:29.990' AS DateTime), NULL, 1)
INSERT [dbo].[Currency] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (4, N'GBP', NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Currency] OFF
GO
SET IDENTITY_INSERT [dbo].[OwnerType] ON 

INSERT [dbo].[OwnerType] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (1, N'Personel', CAST(N'2022-03-31T23:26:11.853' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[OwnerType] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (2, N'Ekip', CAST(N'2022-03-31T23:26:15.090' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[OwnerType] OFF
GO
SET IDENTITY_INSERT [dbo].[PersonnelTeam] ON 

INSERT [dbo].[PersonnelTeam] ([ID], [MasterID], [isTeam], [Name], [CompanyID], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (1, 1, 1, N'Turkcell - IT - 1', 1, CAST(N'2022-03-31T23:34:42.483' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[PersonnelTeam] ([ID], [MasterID], [isTeam], [Name], [CompanyID], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (2, 1, 0, N'Alp Sencer Özen', 1, CAST(N'2022-03-31T23:35:32.150' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[PersonnelTeam] ([ID], [MasterID], [isTeam], [Name], [CompanyID], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (3, 3, 1, N'Turkcell - Insan Kaynakları - 1', 1, CAST(N'2022-03-31T23:39:11.417' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[PersonnelTeam] ([ID], [MasterID], [isTeam], [Name], [CompanyID], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (4, 3, 0, N'Buse Çeşmeci', 1, CAST(N'2022-03-31T23:39:26.413' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[PersonnelTeam] ([ID], [MasterID], [isTeam], [Name], [CompanyID], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (5, 1, 0, N'Melike Memiş', 1, CAST(N'2022-04-04T22:39:33.077' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[PersonnelTeam] ([ID], [MasterID], [isTeam], [Name], [CompanyID], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (7, 7, 1, N'Sahibinden - İnsan Kaynakları - 1', 2, CAST(N'2022-04-05T11:14:37.010' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[PersonnelTeam] ([ID], [MasterID], [isTeam], [Name], [CompanyID], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (8, 7, 0, N'Betül Yılmaz', 2, CAST(N'2022-04-05T11:15:48.713' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[PersonnelTeam] ([ID], [MasterID], [isTeam], [Name], [CompanyID], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (9, 1, 0, N'Ahmet Barçın', 1, CAST(N'2022-04-05T11:17:37.253' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[PersonnelTeam] ([ID], [MasterID], [isTeam], [Name], [CompanyID], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (10, 3, 0, N'Ayşe Fatma', 1, CAST(N'2022-04-05T11:19:30.330' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[PersonnelTeam] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPrice] ON 

INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (1, 1, 120.0000, 2, CAST(N'2022-04-04T05:07:44.237' AS DateTime), NULL, NULL, CAST(N'2022-04-04T05:07:44.237' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (2, 2, 2500.0000, 2, CAST(N'2022-04-04T17:02:24.530' AS DateTime), NULL, NULL, CAST(N'2022-04-04T17:02:24.530' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (3, 3, 2000.0000, 1, CAST(N'2022-04-04T17:08:05.840' AS DateTime), NULL, NULL, CAST(N'2022-04-04T17:08:05.840' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (4, 4, 25000.0000, 1, CAST(N'2022-04-04T17:13:45.330' AS DateTime), NULL, NULL, CAST(N'2022-04-04T17:13:45.330' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (5, 5, 11000.0000, 1, CAST(N'2022-04-04T18:05:14.123' AS DateTime), NULL, NULL, CAST(N'2022-04-04T18:05:14.123' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (6, 6, 1200.0000, 2, CAST(N'2022-04-06T14:45:42.313' AS DateTime), NULL, NULL, CAST(N'2022-04-06T14:45:42.313' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (7, 7, 250.0000, 3, CAST(N'2022-04-06T17:43:19.253' AS DateTime), NULL, NULL, CAST(N'2022-04-06T17:43:19.253' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (8, 8, 110.0000, 2, CAST(N'2022-04-07T00:00:29.693' AS DateTime), NULL, NULL, CAST(N'2022-04-07T00:00:29.693' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (9, 9, 2500.0000, 2, CAST(N'2022-04-07T02:12:14.157' AS DateTime), NULL, NULL, CAST(N'2022-04-07T02:12:14.157' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (10, 10, 2000.0000, 1, CAST(N'2022-04-07T02:13:29.343' AS DateTime), NULL, NULL, CAST(N'2022-04-07T02:13:29.343' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (11, 11, 2550.0000, 2, CAST(N'2022-04-07T03:00:24.210' AS DateTime), NULL, NULL, CAST(N'2022-04-07T03:00:24.210' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (12, 12, 1250.0000, 2, CAST(N'2022-04-07T03:04:34.427' AS DateTime), NULL, NULL, CAST(N'2022-04-07T03:04:34.427' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (13, 13, 1220.0000, 2, CAST(N'2022-04-07T03:09:05.450' AS DateTime), NULL, NULL, CAST(N'2022-04-07T03:09:05.450' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (14, 14, 1240.0000, 2, CAST(N'2022-04-07T03:13:25.227' AS DateTime), NULL, NULL, CAST(N'2022-04-07T03:13:25.227' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (15, 6, 1300.0000, 2, CAST(N'2022-04-07T03:38:15.843' AS DateTime), NULL, NULL, CAST(N'2022-04-07T03:38:15.817' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (16, 6, 1260.0000, 2, CAST(N'2022-04-07T03:47:37.603' AS DateTime), NULL, NULL, CAST(N'2022-04-07T03:47:37.577' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (17, 6, 1280.0000, 2, CAST(N'2022-04-07T10:45:50.293' AS DateTime), NULL, NULL, CAST(N'2022-04-07T10:45:50.293' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (18, 6, 1280.0000, 2, CAST(N'2022-04-07T10:59:03.577' AS DateTime), NULL, NULL, CAST(N'2022-04-07T10:59:03.577' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (19, 6, 1300.0000, 2, CAST(N'2022-04-07T10:59:20.303' AS DateTime), NULL, NULL, CAST(N'2022-04-07T10:59:20.303' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (20, 5, 12000.0000, 1, CAST(N'2022-04-07T11:59:15.487' AS DateTime), NULL, NULL, CAST(N'2022-04-07T11:59:15.487' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (21, 15, 12000.0000, 1, CAST(N'2022-04-07T16:50:26.267' AS DateTime), NULL, NULL, CAST(N'2022-04-07T16:50:26.267' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (22, 15, 12500.0000, 1, CAST(N'2022-04-07T16:50:43.583' AS DateTime), NULL, NULL, CAST(N'2022-04-07T16:50:43.583' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (23, 16, 1100.0000, 2, CAST(N'2022-04-07T16:58:28.030' AS DateTime), NULL, NULL, CAST(N'2022-04-07T16:58:28.030' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (24, 16, 1150.0000, 2, CAST(N'2022-04-07T16:58:42.720' AS DateTime), NULL, NULL, CAST(N'2022-04-07T16:58:42.720' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (25, 16, 1250.0000, 2, CAST(N'2022-05-12T21:08:31.307' AS DateTime), NULL, NULL, CAST(N'2022-05-12T21:08:31.307' AS DateTime), NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (26, 16, 1250.0000, 2, CAST(N'2022-05-14T12:23:12.347' AS DateTime), NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (27, 16, 1300.0000, 2, CAST(N'2022-05-14T12:57:45.890' AS DateTime), CAST(N'2022-05-14T12:57:45.890' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (28, 17, 150.0000, 2, CAST(N'2022-05-14T18:01:18.403' AS DateTime), CAST(N'2022-05-14T18:01:18.403' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (29, 18, 1500.0000, 2, CAST(N'2022-05-14T18:37:45.330' AS DateTime), CAST(N'2022-05-14T18:37:45.330' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (30, 18, 1600.0000, 2, CAST(N'2022-05-14T18:38:44.427' AS DateTime), CAST(N'2022-05-14T18:38:44.427' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (31, 19, 1300.0000, 2, CAST(N'2022-05-15T23:06:37.657' AS DateTime), CAST(N'2022-05-15T23:06:37.657' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (32, 20, 1300.0000, 2, CAST(N'2022-05-19T21:37:00.247' AS DateTime), CAST(N'2022-05-19T21:37:00.247' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (33, 21, 130.0000, 3, CAST(N'2022-05-19T21:53:36.517' AS DateTime), CAST(N'2022-05-19T21:53:36.517' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (34, 22, 300.0000, 2, CAST(N'2022-05-20T02:04:37.487' AS DateTime), CAST(N'2022-05-20T02:04:37.487' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (35, 19, 1350.0000, 2, CAST(N'2022-05-20T02:26:41.337' AS DateTime), CAST(N'2022-05-20T02:26:41.337' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (36, 23, 2.0000, 2, CAST(N'2022-06-25T17:21:08.397' AS DateTime), CAST(N'2022-06-25T17:21:08.397' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (37, 24, 2000.0000, 1, CAST(N'2022-06-25T17:25:02.187' AS DateTime), CAST(N'2022-06-25T17:25:02.187' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (38, 25, 30.0000, 2, CAST(N'2022-07-11T17:33:19.470' AS DateTime), CAST(N'2022-07-11T17:33:19.470' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (39, 26, 1300.0000, 2, CAST(N'2022-07-11T17:37:03.290' AS DateTime), CAST(N'2022-07-11T17:37:03.290' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (40, 26, 1350.0000, 2, CAST(N'2022-07-12T15:11:23.877' AS DateTime), CAST(N'2022-07-12T15:11:23.877' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (41, 27, 550.0000, 2, CAST(N'2022-07-12T16:11:42.487' AS DateTime), CAST(N'2022-07-12T16:11:42.487' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (42, 28, 23.0000, 2, CAST(N'2022-07-12T16:16:47.030' AS DateTime), CAST(N'2022-07-12T16:16:47.030' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (43, 27, 560.0000, 2, CAST(N'2022-07-12T16:31:00.647' AS DateTime), CAST(N'2022-07-12T16:31:00.647' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblPrice] ([ID], [AssetID], [Price], [CurrencyID], [Date], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (44, 26, 1360.0000, 2, CAST(N'2022-07-12T23:38:36.567' AS DateTime), CAST(N'2022-07-12T23:38:36.567' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tblPrice] OFF
GO
SET IDENTITY_INSERT [dbo].[tblStatus] ON 

INSERT [dbo].[tblStatus] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (1, N'Depo', CAST(N'2022-03-31T23:15:43.507' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblStatus] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (2, N'Personel/Ekip', CAST(N'2022-03-31T23:15:51.377' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblStatus] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (3, N'Müşteri', CAST(N'2022-03-31T23:15:56.543' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblStatus] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (4, N'İade', CAST(N'2022-03-31T23:16:05.560' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblStatus] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (5, N'Emekli', CAST(N'2022-03-31T23:16:10.413' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[tblStatus] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (6, N'Kayıp/Çalıntı', CAST(N'2022-03-31T23:16:18.497' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tblStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Unit] ON 

INSERT [dbo].[Unit] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (1, N'asd', NULL, NULL, CAST(N'2022-03-31T12:31:32.907' AS DateTime), NULL, 0)
INSERT [dbo].[Unit] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (2, N'asd123', NULL, NULL, CAST(N'2022-03-31T00:08:54.700' AS DateTime), NULL, 0)
INSERT [dbo].[Unit] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (3, N'12345', CAST(N'2022-03-31T00:55:07.793' AS DateTime), NULL, CAST(N'2022-03-31T00:55:08.303' AS DateTime), NULL, 0)
INSERT [dbo].[Unit] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (5, N'deneme', CAST(N'2022-03-31T01:10:28.720' AS DateTime), NULL, CAST(N'2022-03-31T01:10:29.230' AS DateTime), NULL, 0)
INSERT [dbo].[Unit] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (6, N'Adet', CAST(N'2022-03-31T22:17:00.560' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Unit] ([ID], [Description], [CreateDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [isActive]) VALUES (7, N'Litre', CAST(N'2022-03-31T22:17:07.067' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Unit] OFF
GO
ALTER TABLE [dbo].[ActionStatus] ADD  CONSTRAINT [DF__ActionSta__Creat__2EDAF651]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[ActionStatus] ADD  CONSTRAINT [DF__ActionSta__isAct__2FCF1A8A]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[Asset] ADD  CONSTRAINT [DF_Asset_RegistrationNumber]  DEFAULT (newid()) FOR [RegistrationNumber]
GO
ALTER TABLE [dbo].[Asset] ADD  CONSTRAINT [DF__Asset__CreateDat__30C33EC3]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Asset] ADD  CONSTRAINT [DF__Asset__isActive__31B762FC]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[AssetAction] ADD  CONSTRAINT [DF__AssetActi__Creat__32AB8735]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AssetAction] ADD  CONSTRAINT [DF__AssetActi__isAct__339FAB6E]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[AssetActionOptions] ADD  CONSTRAINT [DF_AssetActionOptions_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AssetActionOptions] ADD  CONSTRAINT [DF_AssetActionOptions_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[AssetBarcode] ADD  CONSTRAINT [DF__AssetBarc__Creat__3493CFA7]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AssetBarcode] ADD  CONSTRAINT [DF__AssetBarc__isAct__3587F3E0]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[AssetCustomer] ADD  CONSTRAINT [DF__AssetCust__Creat__367C1819]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AssetCustomer] ADD  CONSTRAINT [DF__AssetCust__isAct__37703C52]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[AssetGroup] ADD  CONSTRAINT [DF__AssetGrou__Creat__3864608B]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AssetGroup] ADD  CONSTRAINT [DF__AssetGrou__isAct__395884C4]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[AssetOwner] ADD  CONSTRAINT [DF__AssetOwne__Creat__3A4CA8FD]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AssetOwner] ADD  CONSTRAINT [DF__AssetOwne__isAct__3B40CD36]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[AssetStatus] ADD  CONSTRAINT [DF__AssetStat__Creat__3C34F16F]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AssetStatus] ADD  CONSTRAINT [DF__AssetStat__isAct__3D2915A8]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[AssetType] ADD  CONSTRAINT [DF__AssetType__Creat__3E1D39E1]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AssetType] ADD  CONSTRAINT [DF__AssetType__isAct__3F115E1A]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[AssetWithoutBarcode] ADD  CONSTRAINT [DF__AssetWith__Creat__40058253]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AssetWithoutBarcode] ADD  CONSTRAINT [DF__AssetWith__isAct__40F9A68C]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[BrandModel] ADD  CONSTRAINT [DF__BrandMode__Creat__41EDCAC5]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[BrandModel] ADD  CONSTRAINT [DF__BrandMode__isAct__42E1EEFE]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[Comment] ADD  CONSTRAINT [DF__Comment__CreateD__43D61337]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Comment] ADD  CONSTRAINT [DF__Comment__isActiv__44CA3770]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[CommType] ADD  CONSTRAINT [DF__CommType__Create__45BE5BA9]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[CommType] ADD  CONSTRAINT [DF__CommType__isActi__46B27FE2]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[Communication] ADD  CONSTRAINT [DF__Communica__Creat__47A6A41B]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Communication] ADD  CONSTRAINT [DF__Communica__isAct__489AC854]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF__Team__CreateDate__662B2B3B]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF__Team__isActive__671F4F74]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[Currency] ADD  CONSTRAINT [DF__Currency__Create__498EEC8D]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Currency] ADD  CONSTRAINT [DF__Currency__isActi__4A8310C6]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__Create__4B7734FF]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__isActi__4C6B5938]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF__Document__Create__4D5F7D71]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF__Document__isActi__4E53A1AA]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[LoginInfo] ADD  CONSTRAINT [DF__LoginInfo__Creat__4F47C5E3]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[LoginInfo] ADD  CONSTRAINT [DF__LoginInfo__isAct__503BEA1C]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[OwnerType] ADD  CONSTRAINT [DF__OwnerType__Creat__51300E55]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[OwnerType] ADD  CONSTRAINT [DF__OwnerType__isAct__5224328E]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[PageClaim] ADD  CONSTRAINT [DF__PageClaim__Creat__531856C7]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[PageClaim] ADD  CONSTRAINT [DF__PageClaim__isAct__540C7B00]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[PersonnelLoginInfo] ADD  CONSTRAINT [DF__Personnel__Creat__56E8E7AB]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[PersonnelLoginInfo] ADD  CONSTRAINT [DF__Personnel__isAct__57DD0BE4]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[PersonnelTeam] ADD  CONSTRAINT [DF__Personnel__Creat__55009F39]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[PersonnelTeam] ADD  CONSTRAINT [DF__Personnel__isAct__55F4C372]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[RolePersonnel] ADD  CONSTRAINT [DF__RolePerso__Creat__5CA1C101]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[RolePersonnel] ADD  CONSTRAINT [DF__RolePerso__isAct__5D95E53A]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tblClaim] ADD  CONSTRAINT [DF__tblClaim__Create__5E8A0973]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[tblClaim] ADD  CONSTRAINT [DF__tblClaim__isActi__5F7E2DAC]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tblPage] ADD  CONSTRAINT [DF__tblPage__CreateD__607251E5]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[tblPage] ADD  CONSTRAINT [DF__tblPage__isActiv__6166761E]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tblPrice] ADD  CONSTRAINT [DF__tblPrice__Create__625A9A57]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[tblPrice] ADD  CONSTRAINT [DF__tblPrice__isActi__634EBE90]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tblRole] ADD  CONSTRAINT [DF__Role__CreateDate__5AB9788F]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[tblRole] ADD  CONSTRAINT [DF__Role__isActive__5BAD9CC8]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tblStatus] ADD  CONSTRAINT [DF__tblStatus__Creat__6442E2C9]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[tblStatus] ADD  CONSTRAINT [DF__tblStatus__isAct__65370702]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[Unit] ADD  CONSTRAINT [DF__Unit__CreateDate__681373AD]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Unit] ADD  CONSTRAINT [DF__Unit__isActive__690797E6]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[ActionStatus]  WITH CHECK ADD  CONSTRAINT [FK_ActionStatus_AssetAction] FOREIGN KEY([AssetActionID])
REFERENCES [dbo].[AssetAction] ([ID])
GO
ALTER TABLE [dbo].[ActionStatus] CHECK CONSTRAINT [FK_ActionStatus_AssetAction]
GO
ALTER TABLE [dbo].[ActionStatus]  WITH CHECK ADD  CONSTRAINT [FK_ActionStatus_tblStatus] FOREIGN KEY([StatusID])
REFERENCES [dbo].[tblStatus] ([ID])
GO
ALTER TABLE [dbo].[ActionStatus] CHECK CONSTRAINT [FK_ActionStatus_tblStatus]
GO
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [FK_Asset_AssetActionOptions] FOREIGN KEY([RetireReason])
REFERENCES [dbo].[AssetActionOptions] ([ID])
GO
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [FK_Asset_AssetActionOptions]
GO
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [FK_Asset_AssetGroup] FOREIGN KEY([AssetGroupID])
REFERENCES [dbo].[AssetGroup] ([ID])
GO
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [FK_Asset_AssetGroup]
GO
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [FK_Asset_AssetType] FOREIGN KEY([AssetTypeID])
REFERENCES [dbo].[AssetType] ([ID])
GO
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [FK_Asset_AssetType]
GO
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [FK_Asset_BrandModel] FOREIGN KEY([BrandModelID])
REFERENCES [dbo].[BrandModel] ([ID])
GO
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [FK_Asset_BrandModel]
GO
ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [FK_Asset_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [FK_Asset_Company]
GO
ALTER TABLE [dbo].[AssetBarcode]  WITH CHECK ADD  CONSTRAINT [FK_AssetBarcode_Asset] FOREIGN KEY([AssetID])
REFERENCES [dbo].[Asset] ([ID])
GO
ALTER TABLE [dbo].[AssetBarcode] CHECK CONSTRAINT [FK_AssetBarcode_Asset]
GO
ALTER TABLE [dbo].[AssetCustomer]  WITH CHECK ADD  CONSTRAINT [FK_AssetCustomer_Asset] FOREIGN KEY([AssetID])
REFERENCES [dbo].[Asset] ([ID])
GO
ALTER TABLE [dbo].[AssetCustomer] CHECK CONSTRAINT [FK_AssetCustomer_Asset]
GO
ALTER TABLE [dbo].[AssetCustomer]  WITH CHECK ADD  CONSTRAINT [FK_AssetCustomer_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[AssetCustomer] CHECK CONSTRAINT [FK_AssetCustomer_Customer]
GO
ALTER TABLE [dbo].[AssetOwner]  WITH CHECK ADD  CONSTRAINT [FK_AssetOwner_Asset] FOREIGN KEY([AssetID])
REFERENCES [dbo].[Asset] ([ID])
GO
ALTER TABLE [dbo].[AssetOwner] CHECK CONSTRAINT [FK_AssetOwner_Asset]
GO
ALTER TABLE [dbo].[AssetOwner]  WITH CHECK ADD  CONSTRAINT [FK_AssetOwner_AssetActionOptions] FOREIGN KEY([DebitReason])
REFERENCES [dbo].[AssetActionOptions] ([ID])
GO
ALTER TABLE [dbo].[AssetOwner] CHECK CONSTRAINT [FK_AssetOwner_AssetActionOptions]
GO
ALTER TABLE [dbo].[AssetOwner]  WITH CHECK ADD  CONSTRAINT [FK_AssetOwner_OwnerType] FOREIGN KEY([OwnerTypeID])
REFERENCES [dbo].[OwnerType] ([ID])
GO
ALTER TABLE [dbo].[AssetOwner] CHECK CONSTRAINT [FK_AssetOwner_OwnerType]
GO
ALTER TABLE [dbo].[AssetOwner]  WITH CHECK ADD  CONSTRAINT [FK_AssetOwner_PersonnelTeam] FOREIGN KEY([OwnerID])
REFERENCES [dbo].[PersonnelTeam] ([ID])
GO
ALTER TABLE [dbo].[AssetOwner] CHECK CONSTRAINT [FK_AssetOwner_PersonnelTeam]
GO
ALTER TABLE [dbo].[AssetStatus]  WITH CHECK ADD  CONSTRAINT [FK_AssetStatus_Asset] FOREIGN KEY([AssetID])
REFERENCES [dbo].[Asset] ([ID])
GO
ALTER TABLE [dbo].[AssetStatus] CHECK CONSTRAINT [FK_AssetStatus_Asset]
GO
ALTER TABLE [dbo].[AssetStatus]  WITH CHECK ADD  CONSTRAINT [FK_AssetStatus_PersonnelTeam] FOREIGN KEY([PersonnelID])
REFERENCES [dbo].[PersonnelTeam] ([ID])
GO
ALTER TABLE [dbo].[AssetStatus] CHECK CONSTRAINT [FK_AssetStatus_PersonnelTeam]
GO
ALTER TABLE [dbo].[AssetStatus]  WITH CHECK ADD  CONSTRAINT [FK_AssetStatus_tblStatus] FOREIGN KEY([StatusID])
REFERENCES [dbo].[tblStatus] ([ID])
GO
ALTER TABLE [dbo].[AssetStatus] CHECK CONSTRAINT [FK_AssetStatus_tblStatus]
GO
ALTER TABLE [dbo].[AssetWithoutBarcode]  WITH CHECK ADD  CONSTRAINT [FK_AssetWithoutBarcode_Asset] FOREIGN KEY([AssetID])
REFERENCES [dbo].[Asset] ([ID])
GO
ALTER TABLE [dbo].[AssetWithoutBarcode] CHECK CONSTRAINT [FK_AssetWithoutBarcode_Asset]
GO
ALTER TABLE [dbo].[AssetWithoutBarcode]  WITH CHECK ADD  CONSTRAINT [FK_AssetWithoutBarcode_Unit] FOREIGN KEY([UnitID])
REFERENCES [dbo].[Unit] ([ID])
GO
ALTER TABLE [dbo].[AssetWithoutBarcode] CHECK CONSTRAINT [FK_AssetWithoutBarcode_Unit]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Asset] FOREIGN KEY([AssetID])
REFERENCES [dbo].[Asset] ([ID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Asset]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_PersonnelTeam] FOREIGN KEY([PersonnelID])
REFERENCES [dbo].[PersonnelTeam] ([ID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_PersonnelTeam]
GO
ALTER TABLE [dbo].[Communication]  WITH CHECK ADD  CONSTRAINT [FK_Communication_CommType] FOREIGN KEY([CommTypeID])
REFERENCES [dbo].[CommType] ([ID])
GO
ALTER TABLE [dbo].[Communication] CHECK CONSTRAINT [FK_Communication_CommType]
GO
ALTER TABLE [dbo].[Communication]  WITH CHECK ADD  CONSTRAINT [FK_Communication_PersonnelTeam] FOREIGN KEY([PersonnelID])
REFERENCES [dbo].[PersonnelTeam] ([ID])
GO
ALTER TABLE [dbo].[Communication] CHECK CONSTRAINT [FK_Communication_PersonnelTeam]
GO
ALTER TABLE [dbo].[PageClaim]  WITH CHECK ADD  CONSTRAINT [FK_PageClaim_tblClaim] FOREIGN KEY([ClaimID])
REFERENCES [dbo].[tblClaim] ([ID])
GO
ALTER TABLE [dbo].[PageClaim] CHECK CONSTRAINT [FK_PageClaim_tblClaim]
GO
ALTER TABLE [dbo].[PageClaim]  WITH CHECK ADD  CONSTRAINT [FK_PageClaim_tblPage] FOREIGN KEY([PageID])
REFERENCES [dbo].[tblPage] ([ID])
GO
ALTER TABLE [dbo].[PageClaim] CHECK CONSTRAINT [FK_PageClaim_tblPage]
GO
ALTER TABLE [dbo].[PageClaim]  WITH CHECK ADD  CONSTRAINT [FK_PageClaim_tblRole] FOREIGN KEY([RoleID])
REFERENCES [dbo].[tblRole] ([ID])
GO
ALTER TABLE [dbo].[PageClaim] CHECK CONSTRAINT [FK_PageClaim_tblRole]
GO
ALTER TABLE [dbo].[PersonnelLoginInfo]  WITH CHECK ADD  CONSTRAINT [FK_PersonnelLoginInfo_LoginInfo] FOREIGN KEY([LoginInfoID])
REFERENCES [dbo].[LoginInfo] ([ID])
GO
ALTER TABLE [dbo].[PersonnelLoginInfo] CHECK CONSTRAINT [FK_PersonnelLoginInfo_LoginInfo]
GO
ALTER TABLE [dbo].[PersonnelLoginInfo]  WITH CHECK ADD  CONSTRAINT [FK_PersonnelLoginInfo_PersonnelTeam] FOREIGN KEY([PersonnelID])
REFERENCES [dbo].[PersonnelTeam] ([ID])
GO
ALTER TABLE [dbo].[PersonnelLoginInfo] CHECK CONSTRAINT [FK_PersonnelLoginInfo_PersonnelTeam]
GO
ALTER TABLE [dbo].[PersonnelTeam]  WITH CHECK ADD  CONSTRAINT [FK_PersonnelTeam_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[PersonnelTeam] CHECK CONSTRAINT [FK_PersonnelTeam_Company]
GO
ALTER TABLE [dbo].[RolePersonnel]  WITH CHECK ADD  CONSTRAINT [FK_RolePersonnel_tblRole] FOREIGN KEY([RoleID])
REFERENCES [dbo].[tblRole] ([ID])
GO
ALTER TABLE [dbo].[RolePersonnel] CHECK CONSTRAINT [FK_RolePersonnel_tblRole]
GO
ALTER TABLE [dbo].[tblPrice]  WITH CHECK ADD  CONSTRAINT [FK_tblPrice_Asset] FOREIGN KEY([AssetID])
REFERENCES [dbo].[Asset] ([ID])
GO
ALTER TABLE [dbo].[tblPrice] CHECK CONSTRAINT [FK_tblPrice_Asset]
GO
ALTER TABLE [dbo].[tblPrice]  WITH CHECK ADD  CONSTRAINT [FK_tblPrice_Currency] FOREIGN KEY([CurrencyID])
REFERENCES [dbo].[Currency] ([ID])
GO
ALTER TABLE [dbo].[tblPrice] CHECK CONSTRAINT [FK_tblPrice_Currency]
GO
/****** Object:  Statistic [PK_ActionStatus]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[ActionStatus]([PK_ActionStatus]) WITH STATS_STREAM = 0x01000000010000000000000000000000D66EAB2000000000400000000000000000000000000000003803436B3800000004000A00000000000000000000000000, ROWCOUNT = 5, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000005_57FD0775]    Script Date: 25.09.2022 11:35:29 ******/
CREATE STATISTICS [_WA_Sys_00000005_57FD0775] ON [dbo].[Asset]([AssetGroupID]) WITH STATS_STREAM = 0x01000000010000000000000000000000F262B56C00000000FA01000000000000BA010000000000003803006F3800000004000A0000000000000000000000000007000000AF5B120070AE000008000000000000000800000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400000004100000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110400000000000000000000000000003E0000000000000046000000000000004E00000000000000100000000000000027000000000000001000140000000040000000000000803F01000000040000100014000000C040000000000000803F0300000004000008000000000000000000000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000006_57FD0775]    Script Date: 25.09.2022 11:35:29 ******/
CREATE STATISTICS [_WA_Sys_00000006_57FD0775] ON [dbo].[Asset]([AssetTypeID]) WITH STATS_STREAM = 0x010000000100000000000000000000000750DB4100000000FA01000000000000BA010000000000003803006F3800000004000A0000000000000000000000000007000000812027016DAE000004000000000000000400000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400000804000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110400000000000000000000000000003E0000000000000046000000000000004E00000000000000100000000000000027000000000000001000140000000040000000000000803F010000000400001000140000000040000000000000803F0200000004000004000000000000000000000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000007_57FD0775]    Script Date: 25.09.2022 11:35:29 ******/
CREATE STATISTICS [_WA_Sys_00000007_57FD0775] ON [dbo].[Asset]([BrandModelID]) WITH STATS_STREAM = 0x010000000100000000000000000000003E974DB700000000FA01000000000000BA010000000000003803006F3800000004000A0000000000000000000000000007000000822027016DAE000004000000000000000400000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400000804000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110400000000000000000000000000003E0000000000000046000000000000004E00000000000000100000000000000027000000000000001000140000004040000000000000803F01000000040000100014000000803F000000000000803F0400000004000004000000000000000000000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000013_57FD0775]    Script Date: 25.09.2022 11:35:29 ******/
CREATE STATISTICS [_WA_Sys_00000013_57FD0775] ON [dbo].[Asset]([isActive]) WITH STATS_STREAM = 0x0100000001000000000000000000000067591FF400000000D801000000000000980100000000000068038674680000000100010000000000000000000000000007000000E811CC0095AE000010000000000000001000000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000110000000000803F00008041000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110400000000000000000000000000001C0000000000000024000000000000002C0000000000000008000000000000001000110000008041000000000000803F0104000010000000000000000000000000000000
GO
/****** Object:  Statistic [PK_Asset]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[Asset]([PK_Asset]) WITH STATS_STREAM = 0x0100000001000000000000000000000079AB99A3000000001902000000000000D901000000000000380300003800000004000A00000000000000000000000000070000007F2027016DAE0000040000000000000004000000000000000000803F0000803E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000030000000100000014000000000080400000804000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110400000000000000000000000000005D0000000000000065000000000000006D0000000000000018000000000000002F000000000000004600000000000000100014000000803F000000000000803F01000000040000100014000000803F0000803F0000803F03000000040000100014000000803F000000000000803F0400000004000004000000000000000000000000000000, ROWCOUNT = 28, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_AssetAction]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[AssetAction]([PK_AssetAction]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 8, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_AssetActionOptions]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[AssetActionOptions]([PK_AssetActionOptions]) WITH STATS_STREAM = 0x010000000100000000000000000000006B6AE18D0000000040000000000000000000000000000000380350003800000004000A00000000000000000000000000, ROWCOUNT = 6, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000002_00750D23]    Script Date: 25.09.2022 11:35:29 ******/
CREATE STATISTICS [_WA_Sys_00000002_00750D23] ON [dbo].[AssetBarcode]([AssetID]) WITH STATS_STREAM = 0x010000000100000000000000000000001A79F2DB000000001902000000000000D901000000000000380300003800000004000A0000000000000000000000000007000000812027016DAE0000040000000000000004000000000000000000803F0000803E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000030000000100000014000000000080400000804000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110400000000000000000000000000005D0000000000000065000000000000006D0000000000000018000000000000002F000000000000004600000000000000100014000000803F000000000000803F01000000040000100014000000803F0000803F0000803F03000000040000100014000000803F000000000000803F0400000004000004000000000000000000000000000000
GO
/****** Object:  Statistic [PK_AssetBarcode]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[AssetBarcode]([PK_AssetBarcode]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 25, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_AssetCustomer]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[AssetCustomer]([PK_AssetCustomer]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK_AssetGroup]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[AssetGroup]([PK_AssetGroup]) WITH STATS_STREAM = 0x010000000100000000000000000000003D40E02400000000FA01000000000000BA01000000000000380300003800000004000A0000000000000000000000000007000000AF5B120070AE0000030000000000000003000000000000000000803FABAAAA3E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400000404000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110400000000000000000000000000003E0000000000000046000000000000004E0000000000000010000000000000002700000000000000100014000000803F000000000000803F01000000040000100014000000803F0000803F0000803F0300000004000003000000000000000000000000000000, ROWCOUNT = 3, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_AssetOwner]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[AssetOwner]([PK_AssetOwner]) WITH STATS_STREAM = 0x010000000100000000000000000000008864E4560000000040000000000000000000000000000000380300003800000004000A00000000000000000001000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK_AssetStatus]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[AssetStatus]([PK_AssetStatus]) WITH STATS_STREAM = 0x010000000100000000000000000000008864E4560000000040000000000000000000000000000000380300003800000004000A00000000000000000001000000, ROWCOUNT = 28, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_AssetType]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[AssetType]([PK_AssetType]) WITH STATS_STREAM = 0x010000000100000000000000000000009E18F1D800000000FA01000000000000BA01000000000000380300003800000004000A0000000000000000000000000007000000812027016DAE0000030000000000000003000000000000000000803FABAAAA3E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400000404000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110400000000000000000000000000003E0000000000000046000000000000004E0000000000000010000000000000002700000000000000100014000000803F000000000000803F01000000040000100014000000803F0000803F0000803F0300000004000003000000000000000000000000000000, ROWCOUNT = 3, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000002_7CA47C3F]    Script Date: 25.09.2022 11:35:29 ******/
CREATE STATISTICS [_WA_Sys_00000002_7CA47C3F] ON [dbo].[AssetWithoutBarcode]([AssetID]) WITH STATS_STREAM = 0x0100000001000000000000000000000028BA791A00000000DB010000000000009B01000000000000380300003800000004000A00000000000000000000000000070000005BF51D01BFAE000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110400000000000000000000000000001F0000000000000027000000000000002F000000000000000800000000000000100014000000803F000000000000803F1700000004000001000000000000000000000000000000
GO
/****** Object:  Statistic [PK_AssetWithoutBarcode]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[AssetWithoutBarcode]([PK_AssetWithoutBarcode]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 3, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000002_47C69FAC]    Script Date: 25.09.2022 11:35:29 ******/
CREATE STATISTICS [_WA_Sys_00000002_47C69FAC] ON [dbo].[BrandModel]([MasterID]) WITH STATS_STREAM = 0x01000000010000000000000000000000AC6B50EC000000003802000000000000F801000000000000380200003800000004000A0000000000000000000000000007000000E88BC40070AE00000E000000000000000E00000000000000000000000000803E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000040000000100000014000000000080400000604100000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110400000000000000000000000000007C0000000000000084000000000000008C00000000000000200000000000000037000000000000004E000000000000006500000000000000100014000000A040000000000000803F010000000400001000140000008040000000000000803F040000000400001000140000000040000000000000803F0A0000000400001000140000004040000000000000803F0C0000000400000E000000000000000000000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000003_47C69FAC]    Script Date: 25.09.2022 11:35:29 ******/
CREATE STATISTICS [_WA_Sys_00000003_47C69FAC] ON [dbo].[BrandModel]([isBrand]) WITH STATS_STREAM = 0x01000000010000000000000000000000754D676400000000F401000000000000B40100000000000068020000680000000100010000000000000000000B020000070000002627BE0070AE00000E000000000000000E00000000000000000000000000003F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000001000000110000000000803F00006041000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011040000000000000000000000000000380000000000000040000000000000004800000000000000100000000000000024000000000000001000110000002041000000000000803F000400001000110000008040000000000000803F010400000E000000000000000000000000000000
GO
/****** Object:  Statistic [PK_BrandModel]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[BrandModel]([PK_BrandModel]) WITH STATS_STREAM = 0x0100000001000000000000000000000096B6DEAB000000003802000000000000F801000000000000380300003800000004000A0000000000000000000000000007000000832027016DAE0000070000000000000007000000000000000000803F2549123E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000040000000100000014000000000080400000E04000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110400000000000000000000000000007C0000000000000084000000000000008C00000000000000200000000000000037000000000000004E000000000000006500000000000000100014000000803F000000000000803F01000000040000100014000000803F0000803F0000803F03000000040000100014000000803F0000803F0000803F05000000040000100014000000803F0000803F0000803F0700000004000007000000000000000000000000000000, ROWCOUNT = 14, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_Comment]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[Comment]([PK_Comment]) WITH STATS_STREAM = 0x010000000100000000000000000000008864E4560000000040000000000000000000000000000000380300003800000004000A00000000000000000001000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK_CommType]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[CommType]([PK_CommType]) WITH STATS_STREAM = 0x010000000100000000000000000000008864E4560000000040000000000000000000000000000000380300003800000004000A00000000000000000001000000, ROWCOUNT = 3, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_Communication]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[Communication]([PK_Communication]) WITH STATS_STREAM = 0x010000000100000000000000000000008864E4560000000040000000000000000000000000000000380300003800000004000A00000000000000000001000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK_Company]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[Company]([PK_Company]) WITH STATS_STREAM = 0x010000000100000000000000000000008864E4560000000040000000000000000000000000000000380300003800000004000A00000000000000000001000000, ROWCOUNT = 2, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_Currency]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[Currency]([PK_Currency]) WITH STATS_STREAM = 0x010000000100000000000000000000008864E4560000000040000000000000000000000000000000380300003800000004000A00000000000000000001000000, ROWCOUNT = 4, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_Customer]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[Customer]([PK_Customer]) WITH STATS_STREAM = 0x010000000100000000000000000000008864E4560000000040000000000000000000000000000000380300003800000004000A00000000000000000001000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK_Document]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[Document]([PK_Document]) WITH STATS_STREAM = 0x010000000100000000000000000000008864E4560000000040000000000000000000000000000000380300003800000004000A00000000000000000001000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK_LoginInfo]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[LoginInfo]([PK_LoginInfo]) WITH STATS_STREAM = 0x010000000100000000000000000000008864E4560000000040000000000000000000000000000000380300003800000004000A00000000000000000001000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK_OwnerType]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[OwnerType]([PK_OwnerType]) WITH STATS_STREAM = 0x010000000100000000000000000000008864E4560000000040000000000000000000000000000000380300003800000004000A00000000000000000001000000, ROWCOUNT = 2, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_PageClaim]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[PageClaim]([PK_PageClaim]) WITH STATS_STREAM = 0x010000000100000000000000000000008864E4560000000040000000000000000000000000000000380300003800000004000A00000000000000000001000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK_PersonnelLoginInfo]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[PersonnelLoginInfo]([PK_PersonnelLoginInfo]) WITH STATS_STREAM = 0x010000000100000000000000000000006B6AE18D0000000040000000000000000000000000000000380350003800000004000A00000000000000000000000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK_PersonnelTeam]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[PersonnelTeam]([PK_PersonnelTeam]) WITH STATS_STREAM = 0x010000000100000000000000000000008250DD3A0000000040000000000000000000000000000000380300003800000004000A0000000000000000000B020000, ROWCOUNT = 9, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_RolePersonnel]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[RolePersonnel]([PK_RolePersonnel]) WITH STATS_STREAM = 0x010000000100000000000000000000008250DD3A0000000040000000000000000000000000000000380300003800000004000A0000000000000000000B020000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK_tblClaim]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[tblClaim]([PK_tblClaim]) WITH STATS_STREAM = 0x010000000100000000000000000000008250DD3A0000000040000000000000000000000000000000380300003800000004000A0000000000000000000B020000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK_tblPage]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[tblPage]([PK_tblPage]) WITH STATS_STREAM = 0x010000000100000000000000000000008250DD3A0000000040000000000000000000000000000000380300003800000004000A0000000000000000000B020000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [_WA_Sys_00000002_78D3EB5B]    Script Date: 25.09.2022 11:35:29 ******/
CREATE STATISTICS [_WA_Sys_00000002_78D3EB5B] ON [dbo].[tblPrice]([AssetID]) WITH STATS_STREAM = 0x010000000100000000000000000000001EDB7AE4000000001902000000000000D901000000000000380300003800000004000A0000000000000000000000000007000000822027016DAE0000040000000000000004000000000000000000803F0000803E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000030000000100000014000000000080400000804000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110400000000000000000000000000005D0000000000000065000000000000006D0000000000000018000000000000002F000000000000004600000000000000100014000000803F000000000000803F01000000040000100014000000803F0000803F0000803F03000000040000100014000000803F000000000000803F0400000004000004000000000000000000000000000000
GO
/****** Object:  Statistic [PK_tblPrice]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[tblPrice]([PK_tblPrice]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 44, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_tblRole]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[tblRole]([PK_tblRole]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK_tblStatus]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[tblStatus]([PK_tblStatus]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 6, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_Unit]    Script Date: 25.09.2022 11:35:29 ******/
UPDATE STATISTICS [dbo].[Unit]([PK_Unit]) WITH STATS_STREAM = 0x01000000010000000000000000000000A3D3C7DB0000000040000000000000000000000000000000380300003800000004000A00000000000000000038000000, ROWCOUNT = 6, PAGECOUNT = 1
GO
USE [master]
GO
ALTER DATABASE [AssetManagement] SET  READ_WRITE 
GO
