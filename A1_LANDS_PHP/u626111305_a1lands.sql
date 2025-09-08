-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 08, 2025 at 04:04 PM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u626111305_a1lands`
--
CREATE DATABASE IF NOT EXISTS `u626111305_a1lands` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `u626111305_a1lands`;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
CREATE TABLE IF NOT EXISTS `ads` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_title` varchar(100) NOT NULL,
  `ad_html` text NOT NULL,
  `ad_position` varchar(50) NOT NULL,
  `ad_status` tinyint(1) NOT NULL DEFAULT 1,
  `ad_lang` varchar(11) NOT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`ad_id`, `ad_title`, `ad_html`, `ad_position`, `ad_status`, `ad_lang`) VALUES
(1, 'RAGHU', '', 'header', 1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `emailtemplates`
--

DROP TABLE IF EXISTS `emailtemplates`;
CREATE TABLE IF NOT EXISTS `emailtemplates` (
  `email_id` int(2) NOT NULL AUTO_INCREMENT,
  `email_title` varchar(50) NOT NULL,
  `email_fromname` varchar(50) NOT NULL,
  `email_plaintext` varchar(5) NOT NULL DEFAULT 'false',
  `email_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `email_content` text NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `emailtemplates`
--

INSERT INTO `emailtemplates` (`email_id`, `email_title`, `email_fromname`, `email_plaintext`, `email_disabled`, `email_content`) VALUES
(1, 'New User Registered (Welcome Email)', 'A1 Lands', 'false', 0, '[{\"lang\":\"en\",\"message\":\"<!doctype html>\\r\\n<html xmlns=\\\"http:\\/\\/www.w3.org\\/1999\\/xhtml\\\" xmlns:v=\\\"urn:schemas-microsoft-com:vml\\\" xmlns:o=\\\"urn:schemas-microsoft-com:office:office\\\">\\r\\n\\r\\n<head>\\r\\n<title>\\r\\n\\r\\n<\\/title>\\r\\n<!--[if !mso]> -->\\r\\n<meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"IE=edge\\\">\\r\\n<!--<![endif]-->\\r\\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text\\/html; charset=UTF-8\\\">\\r\\n<meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1\\\">\\r\\n<style type=\\\"text\\/css\\\">\\r\\n#outlook a {\\r\\npadding: 0;\\r\\n}\\r\\n\\r\\n.ReadMsgBody {\\r\\nwidth: 100%;\\r\\n}\\r\\n\\r\\n.ExternalClass {\\r\\nwidth: 100%;\\r\\n}\\r\\n\\r\\n.ExternalClass * {\\r\\nline-height: 100%;\\r\\n}\\r\\n\\r\\nbody {\\r\\nmargin: 0;\\r\\npadding: 0;\\r\\n-webkit-text-size-adjust: 100%;\\r\\n-ms-text-size-adjust: 100%;\\r\\n}\\r\\n\\r\\ntable,\\r\\ntd {\\r\\nborder-collapse: collapse;\\r\\nmso-table-lspace: 0pt;\\r\\nmso-table-rspace: 0pt;\\r\\n}\\r\\n\\r\\nimg {\\r\\nborder: 0;\\r\\nheight: auto;\\r\\nline-height: 100%;\\r\\noutline: none;\\r\\ntext-decoration: none;\\r\\n-ms-interpolation-mode: bicubic;\\r\\n}\\r\\n\\r\\np {\\r\\ndisplay: block;\\r\\nmargin: 13px 0;\\r\\n}\\r\\n<\\/style>\\r\\n<!--[if !mso]><!-->\\r\\n<style type=\\\"text\\/css\\\">\\r\\n@media only screen and (max-width:480px) {\\r\\n@-ms-viewport {\\r\\nwidth: 320px;\\r\\n}\\r\\n@viewport {\\r\\nwidth: 320px;\\r\\n}\\r\\n}\\r\\n<\\/style>\\r\\n<!--<![endif]-->\\r\\n<!--[if mso]>\\r\\n<xml>\\r\\n<o:OfficeDocumentSettings>\\r\\n<o:AllowPNG\\/>\\r\\n<o:PixelsPerInch>96<\\/o:PixelsPerInch>\\r\\n<\\/o:OfficeDocumentSettings>\\r\\n<\\/xml>\\r\\n<![endif]-->\\r\\n<!--[if lte mso 11]>\\r\\n<style type=\\\"text\\/css\\\">\\r\\n.outlook-group-fix { width:100% !important; }\\r\\n<\\/style>\\r\\n<![endif]-->\\r\\n\\r\\n\\r\\n<style type=\\\"text\\/css\\\">\\r\\n@media only screen and (min-width:480px) {\\r\\n.mj-column-per-100 {\\r\\nwidth: 100% !important;\\r\\n}\\r\\n}\\r\\n<\\/style>\\r\\n\\r\\n\\r\\n<style type=\\\"text\\/css\\\">\\r\\n<\\/style>\\r\\n\\r\\n<\\/head>\\r\\n\\r\\n<body style=\\\"background-color:#f9f9f9;\\\">\\r\\n<p><!-- [if !mso]> --> <!--<![endif]--> <!-- [if !mso]><!--><!--<![endif]--> <!-- [if mso]>\\r\\n<xml>\\r\\n<o:OfficeDocumentSettings>\\r\\n<o:AllowPNG\\/>\\r\\n<o:PixelsPerInch>96<\\/o:PixelsPerInch>\\r\\n<\\/o:OfficeDocumentSettings>\\r\\n<\\/xml>\\r\\n<![endif]--> <!-- [if lte mso 11]>\\r\\n<style type=\\\"text\\/css\\\">\\r\\n.outlook-group-fix { width:100% !important; }\\r\\n<\\/style>\\r\\n<![endif]--><\\/p>\\r\\n<div style=\\\"background-color: #f9f9f9;\\\"><!-- [if mso | IE]>\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #f9f9f9; background-color: #f9f9f9; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #f9f9f9; background-color: #f9f9f9; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border-bottom: #333957 solid 5px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #fff; background-color: #fff; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #fff; background-color: #fff; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: #dddddd solid 1px; border-top: 0px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table style=\\\"vertical-align: bottom;\\\" role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: collapse; border-spacing: 0px;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 130px;\\\"><img style=\\\"border: 0; display: block; outline: none; text-decoration: none; width: 100%;\\\" src=\\\"{LOGO_URL}\\\" width=\\\"130\\\" height=\\\"auto\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-bottom: 40px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 24px; font-weight: bold; line-height: 1; text-align: center; color: #555;\\\">Welcome!<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\">Hello {USER_NAME}!<\\/div>\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\"><br \\/>Thank you for signing up. We\'re really happy to have you! Click the link below to login to your account:<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-top: 30px; padding-bottom: 50px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: separate; line-height: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: none; border-radius: 3px; color: #ffffff; cursor: auto; padding: 15px 25px;\\\" role=\\\"presentation\\\" align=\\\"center\\\" valign=\\\"middle\\\" bgcolor=\\\"#333333\\\"><a style=\\\"background: #333333; color: #ffffff; font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 15px; font-weight: normal; line-height: 120%; margin: 0; text-decoration: none; text-transform: none;\\\" href=\\\"{SIGNIN_URL}\\\"> Login to Your Account <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 14px; line-height: 20px; text-align: left; color: #525252;\\\">Cheers,<br \\/><a style=\\\"color: #2f67f6;\\\" href=\\\"{SITE_DOMAIN}\\\">{SITE_NAME}<\\/a><\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"vertical-align: bottom; padding: 0;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 0; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 12px; font-weight: 300; line-height: 1; text-align: center; color: #575757;\\\">{SITE_NAME}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n<![endif]--><\\/div>\\r\\n<\\/body>\\r\\n\\r\\n<\\/html>\",\"subject\":\"Welcome to {SITE_NAME}\"},{\"lang\":\"ar\",\"message\":\"<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n<\\/head>\\r\\n<body>\\r\\n<p><!-- [if !mso]> --> <!--<![endif]--> <!-- [if !mso]><!--><!--<![endif]--> <!-- [if mso]>\\r\\n<xml>\\r\\n<o:OfficeDocumentSettings>\\r\\n<o:AllowPNG\\/>\\r\\n<o:PixelsPerInch>96<\\/o:PixelsPerInch>\\r\\n<\\/o:OfficeDocumentSettings>\\r\\n<\\/xml>\\r\\n<![endif]--> <!-- [if lte mso 11]>\\r\\n<style type=\\\"text\\/css\\\">\\r\\n.outlook-group-fix { width:100% !important; }\\r\\n<\\/style>\\r\\n<![endif]--><\\/p>\\r\\n<div style=\\\"background-color: #f9f9f9;\\\"><!-- [if mso | IE]>\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #f9f9f9; background-color: #f9f9f9; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #f9f9f9; background-color: #f9f9f9; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border-bottom: #F44336 solid 5px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #fff; background-color: #fff; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #fff; background-color: #fff; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: #dddddd solid 1px; border-top: 0px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table style=\\\"vertical-align: bottom;\\\" role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr style=\\\"text-align: right;\\\">\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: collapse; border-spacing: 0px;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 160px;\\\"><img style=\\\"border: 0; display: block; outline: none; text-decoration: none; width: 100%;\\\" src=\\\"{LOGO_URL}\\\" width=\\\"160\\\" height=\\\"auto\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\\"text-align: right;\\\">\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-bottom: 40px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 24px; font-weight: bold; line-height: 1; text-align: center; color: #555;\\\">\\u0623\\u0647\\u0644\\u0627 \\u0628\\u0643!<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\', Arial, sans-serif; font-size: 16px; line-height: 22px; color: #555555; text-align: right;\\\">\\u0645\\u0631\\u062d\\u0628\\u064b\\u0627 {USER_NAME} \\u060c<br \\/><br \\/>\\u0634\\u0643\\u0631\\u0627 \\u0644\\u0643 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644. \\u0646\\u062d\\u0646 \\u0633\\u0639\\u062f\\u0627\\u0621 \\u062d\\u0642\\u064b\\u0627 \\u0628\\u0648\\u062c\\u0648\\u062f\\u0643! \\u0627\\u0646\\u0642\\u0631 \\u0641\\u0648\\u0642 \\u0627\\u0644\\u0627\\u0631\\u062a\\u0628\\u0627\\u0637 \\u0623\\u062f\\u0646\\u0627\\u0647 \\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0625\\u0644\\u0649 \\u062d\\u0633\\u0627\\u0628\\u0643:<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-top: 30px; padding-bottom: 50px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: separate; line-height: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: none; border-radius: 3px; color: #ffffff; cursor: auto; padding: 15px 25px;\\\" role=\\\"presentation\\\" align=\\\"center\\\" valign=\\\"middle\\\" bgcolor=\\\"#F44336\\\"><a style=\\\"background: #F44336; color: #ffffff; font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 15px; font-weight: normal; line-height: 120%; margin: 0; text-decoration: none; text-transform: none;\\\" href=\\\"{SIGNIN_URL}\\\"> \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\', Arial, sans-serif; font-size: 14px; line-height: 20px; color: #525252; text-align: right;\\\">\\u062a\\u062d\\u064a\\u0627\\u062a\\u064a,<br \\/><a style=\\\"color: #525252;\\\" href=\\\"{SITE_DOMAIN}\\\">{SITE_NAME}<\\/a><\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"vertical-align: bottom; padding: 0;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 0; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 12px; font-weight: 300; line-height: 1; text-align: center; color: #575757;\\\">{SITE_NAME}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n<![endif]--><\\/div>\\r\\n<\\/body>\\r\\n<\\/html>\",\"subject\":\"\\u0645\\u0631\\u062d\\u0628\\u0627 \\u0628\\u0643\"},{\"lang\":\"es\",\"message\":\"<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n<\\/head>\\r\\n<body>\\r\\n<p><!-- [if !mso]> --> <!--<![endif]--> <!-- [if !mso]><!--><!--<![endif]--> <!-- [if mso]>\\r\\n<xml>\\r\\n<o:OfficeDocumentSettings>\\r\\n<o:AllowPNG\\/>\\r\\n<o:PixelsPerInch>96<\\/o:PixelsPerInch>\\r\\n<\\/o:OfficeDocumentSettings>\\r\\n<\\/xml>\\r\\n<![endif]--> <!-- [if lte mso 11]>\\r\\n<style type=\\\"text\\/css\\\">\\r\\n.outlook-group-fix { width:100% !important; }\\r\\n<\\/style>\\r\\n<![endif]--><\\/p>\\r\\n<div style=\\\"background-color: #f9f9f9;\\\"><!-- [if mso | IE]>\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #f9f9f9; background-color: #f9f9f9; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #f9f9f9; background-color: #f9f9f9; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border-bottom: #F44336 solid 5px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #fff; background-color: #fff; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #fff; background-color: #fff; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: #dddddd solid 1px; border-top: 0px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table style=\\\"vertical-align: bottom;\\\" role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: collapse; border-spacing: 0px;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 160px;\\\"><img style=\\\"border: 0; display: block; outline: none; text-decoration: none; width: 100%;\\\" src=\\\"{LOGO_URL}\\\" width=\\\"160\\\" height=\\\"auto\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-bottom: 40px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 24px; font-weight: bold; line-height: 1; text-align: center; color: #555;\\\">Bienvenido!<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\">Hola {USER_NAME},<br \\/><br \\/>Gracias por registrarte. &iexcl;Estamos muy felices de tenerte! Haga clic en el enlace a continuaci&oacute;n para iniciar sesi&oacute;n en su cuenta:<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-top: 30px; padding-bottom: 50px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: separate; line-height: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: none; border-radius: 3px; color: #ffffff; cursor: auto; padding: 15px 25px;\\\" role=\\\"presentation\\\" align=\\\"center\\\" valign=\\\"middle\\\" bgcolor=\\\"#F44336\\\"><a style=\\\"background: #F44336; color: #ffffff; font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 15px; font-weight: normal; line-height: 120%; margin: 0; text-decoration: none; text-transform: none;\\\" href=\\\"{SIGNIN_URL}\\\">Mi Cuenta<\\/a>c<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 14px; line-height: 20px; text-align: left; color: #525252;\\\">Saludos,<br \\/><a style=\\\"color: #525252;\\\" href=\\\"{SITE_DOMAIN}\\\">{SITE_NAME}<\\/a><\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"vertical-align: bottom; padding: 0;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 0; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 12px; font-weight: 300; line-height: 1; text-align: center; color: #575757;\\\">{SITE_NAME}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n<![endif]--><\\/div>\\r\\n<\\/body>\\r\\n<\\/html>\",\"subject\":\"Bienvenido\"}]');
INSERT INTO `emailtemplates` (`email_id`, `email_title`, `email_fromname`, `email_plaintext`, `email_disabled`, `email_content`) VALUES
(2, 'Forgot Password - Reset Link', 'A1 Lands', 'false', 0, '[{\"lang\":\"en\",\"message\":\"<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n<\\/head>\\r\\n<body>\\r\\n<p><!-- [if !mso]> --> <!--<![endif]--> <!-- [if !mso]><!--><!--<![endif]--> <!-- [if mso]>\\r\\n<xml>\\r\\n<o:OfficeDocumentSettings>\\r\\n<o:AllowPNG\\/>\\r\\n<o:PixelsPerInch>96<\\/o:PixelsPerInch>\\r\\n<\\/o:OfficeDocumentSettings>\\r\\n<\\/xml>\\r\\n<![endif]--> <!-- [if lte mso 11]>\\r\\n<style type=\\\"text\\/css\\\">\\r\\n.outlook-group-fix { width:100% !important; }\\r\\n<\\/style>\\r\\n<![endif]--><\\/p>\\r\\n<div style=\\\"background-color: #f9f9f9;\\\"><!-- [if mso | IE]>\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #f9f9f9; background-color: #f9f9f9; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #f9f9f9; background-color: #f9f9f9; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border-bottom: #333957 solid 5px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #fff; background-color: #fff; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #fff; background-color: #fff; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: #dddddd solid 1px; border-top: 0px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table style=\\\"vertical-align: bottom;\\\" role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: collapse; border-spacing: 0px;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 130px;\\\"><img style=\\\"border: 0; display: block; outline: none; text-decoration: none; width: 100%;\\\" src=\\\"{LOGO_URL}\\\" width=\\\"130\\\" height=\\\"auto\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-bottom: 40px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 24px; font-weight: bold; line-height: 1; text-align: center; color: #555;\\\">Reset Password<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\">Hi {USER_NAME},<br \\/><br \\/>We received a request to reset your password. Use the button below to set up a new password for your account.<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-top: 30px; padding-bottom: 50px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: separate; line-height: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: none; border-radius: 3px; color: #ffffff; cursor: auto; padding: 15px 25px;\\\" role=\\\"presentation\\\" align=\\\"center\\\" valign=\\\"middle\\\" bgcolor=\\\"#333333\\\"><a style=\\\"background: #333333; color: #ffffff; font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 15px; font-weight: normal; line-height: 120%; margin: 0; text-decoration: none; text-transform: none;\\\" href=\\\"{RESET_URL}\\\"> Reset Password<\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; text-decoration: underline; font-size: 16px; line-height: 22px; text-align: center; color: #555;\\\">This link will be valid for the next 24 hours.<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\">If you did not make this request, just ignore this email.<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 14px; line-height: 20px; text-align: left; color: #525252;\\\">Cheers,<br \\/><a style=\\\"color: #2f67f6;\\\" href=\\\"{SITE_DOMAIN}\\\">{SITE_NAME}<\\/a><\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"vertical-align: bottom; padding: 0;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 0; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 12px; font-weight: 300; line-height: 1; text-align: center; color: #575757;\\\">{SITE_NAME}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n<![endif]--><\\/div>\\r\\n<\\/body>\\r\\n<\\/html>\",\"subject\":\"Notification\"},{\"lang\":\"ar\",\"message\":\"<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n<\\/head>\\r\\n<body>\\r\\n<p><!-- [if !mso]> --> <!--<![endif]--> <!-- [if !mso]><!--><!--<![endif]--> <!-- [if mso]>\\r\\n<xml>\\r\\n<o:OfficeDocumentSettings>\\r\\n<o:AllowPNG\\/>\\r\\n<o:PixelsPerInch>96<\\/o:PixelsPerInch>\\r\\n<\\/o:OfficeDocumentSettings>\\r\\n<\\/xml>\\r\\n<![endif]--> <!-- [if lte mso 11]>\\r\\n<style type=\\\"text\\/css\\\">\\r\\n.outlook-group-fix { width:100% !important; }\\r\\n<\\/style>\\r\\n<![endif]--><\\/p>\\r\\n<div style=\\\"background-color: #f9f9f9;\\\"><!-- [if mso | IE]>\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #f9f9f9; background-color: #f9f9f9; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #f9f9f9; background-color: #f9f9f9; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border-bottom: #F44336 solid 5px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #fff; background-color: #fff; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #fff; background-color: #fff; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: #dddddd solid 1px; border-top: 0px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table style=\\\"vertical-align: bottom;\\\" role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: collapse; border-spacing: 0px;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 160px;\\\"><img style=\\\"border: 0; display: block; outline: none; text-decoration: none; width: 100%;\\\" src=\\\"{LOGO_URL}\\\" width=\\\"160\\\" height=\\\"auto\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-bottom: 40px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 24px; font-weight: bold; line-height: 1; text-align: center; color: #555;\\\">\\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\">\\u0645\\u0631\\u062d\\u0628\\u0627 {USER_NAME},<br \\/><br \\/>\\u0644\\u0642\\u062f \\u062a\\u0644\\u0642\\u064a\\u0646\\u0627 \\u0637\\u0644\\u0628\\u064b\\u0627 \\u0644\\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0643. \\u0627\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0627\\u0644\\u0632\\u0631 \\u0623\\u062f\\u0646\\u0627\\u0647 \\u0644\\u0625\\u0639\\u062f\\u0627\\u062f \\u0643\\u0644\\u0645\\u0629 \\u0645\\u0631\\u0648\\u0631 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062d\\u0633\\u0627\\u0628\\u0643.<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-top: 30px; padding-bottom: 50px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: separate; line-height: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: none; border-radius: 3px; color: #ffffff; cursor: auto; padding: 15px 25px;\\\" role=\\\"presentation\\\" align=\\\"center\\\" valign=\\\"middle\\\" bgcolor=\\\"#F44336\\\"><a style=\\\"background: #F44336; color: #ffffff; font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 15px; font-weight: normal; line-height: 120%; margin: 0; text-decoration: none; text-transform: none;\\\" href=\\\"{RESET_URL}\\\"> \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0627\\u0644\\u0622\\u0646<\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; text-decoration: underline; font-size: 16px; line-height: 22px; text-align: center; color: #555;\\\">\\u0633\\u064a\\u0643\\u0648\\u0646 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0637 \\u0635\\u0627\\u0644\\u062d\\u064b\\u0627 \\u0644\\u0645\\u062f\\u0629 24 \\u0633\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0642\\u0627\\u062f\\u0645\\u0629.<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\">\\u0625\\u0630\\u0627 \\u0644\\u0645 \\u062a\\u0643\\u0646 \\u0642\\u062f \\u0642\\u062f\\u0645\\u062a \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0637\\u0644\\u0628 \\u060c \\u0641\\u062a\\u062c\\u0627\\u0647\\u0644 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0641\\u0642\\u0637.<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 14px; line-height: 20px; text-align: left; color: #525252;\\\">\\u0645\\u0639 \\u062a\\u062d\\u064a\\u0627\\u062a\\u064a,<br \\/><a style=\\\"color: #525252;\\\" href=\\\"{SITE_DOMAIN}\\\">{SITE_NAME}<\\/a><\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"vertical-align: bottom; padding: 0;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 0; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 12px; font-weight: 300; line-height: 1; text-align: center; color: #575757;\\\">{SITE_NAME}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n<![endif]--><\\/div>\\r\\n<\\/body>\\r\\n<\\/html>\",\"subject\":\"\\u0625\\u0634\\u0639\\u0627\\u0631\"},{\"lang\":\"es\",\"message\":\"<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n<\\/head>\\r\\n<body>\\r\\n<p><!-- [if !mso]> --> <!--<![endif]--> <!-- [if !mso]><!--><!--<![endif]--> <!-- [if mso]>\\r\\n<xml>\\r\\n<o:OfficeDocumentSettings>\\r\\n<o:AllowPNG\\/>\\r\\n<o:PixelsPerInch>96<\\/o:PixelsPerInch>\\r\\n<\\/o:OfficeDocumentSettings>\\r\\n<\\/xml>\\r\\n<![endif]--> <!-- [if lte mso 11]>\\r\\n<style type=\\\"text\\/css\\\">\\r\\n.outlook-group-fix { width:100% !important; }\\r\\n<\\/style>\\r\\n<![endif]--><\\/p>\\r\\n<div style=\\\"background-color: #f9f9f9;\\\"><!-- [if mso | IE]>\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #f9f9f9; background-color: #f9f9f9; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #f9f9f9; background-color: #f9f9f9; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border-bottom: #F44336 solid 5px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #fff; background-color: #fff; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #fff; background-color: #fff; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: #dddddd solid 1px; border-top: 0px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table style=\\\"vertical-align: bottom;\\\" role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: collapse; border-spacing: 0px;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 160px;\\\"><img style=\\\"border: 0; display: block; outline: none; text-decoration: none; width: 100%;\\\" src=\\\"{LOGO_URL}\\\" width=\\\"160\\\" height=\\\"auto\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-bottom: 40px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 24px; font-weight: bold; line-height: 1; text-align: center; color: #555;\\\">Restablecer Contrase&ntilde;a<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\">Hola {USER_NAME},<br \\/><br \\/>Recibimos una solicitud para restablecer su contrase&ntilde;a. Utilice el bot&oacute;n de abajo para configurar una nueva contrase&ntilde;a para su cuenta.<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-top: 30px; padding-bottom: 50px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: separate; line-height: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: none; border-radius: 3px; color: #ffffff; cursor: auto; padding: 15px 25px;\\\" role=\\\"presentation\\\" align=\\\"center\\\" valign=\\\"middle\\\" bgcolor=\\\"#F44336\\\"><a style=\\\"background: #F44336; color: #ffffff; font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 15px; font-weight: normal; line-height: 120%; margin: 0; text-decoration: none; text-transform: none;\\\" href=\\\"{RESET_URL}\\\"> Restablecer Ahora<\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; text-decoration: underline; font-size: 16px; line-height: 22px; text-align: center; color: #555;\\\">Este enlace ser&aacute; v&aacute;lido durante las pr&oacute;ximas 24 horas.<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\">Si no realiz&oacute; esta solicitud, simplemente ignore este correo electr&oacute;nico.<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 14px; line-height: 20px; text-align: left; color: #525252;\\\">Saludos,<br \\/><a style=\\\"color: #525252;\\\" href=\\\"{SITE_DOMAIN}\\\">{SITE_NAME}<\\/a><\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"vertical-align: bottom; padding: 0;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 0; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 12px; font-weight: 300; line-height: 1; text-align: center; color: #575757;\\\">{SITE_NAME}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n<![endif]--><\\/div>\\r\\n<\\/body>\\r\\n<\\/html>\",\"subject\":\"Notificaci\\u00f3n\"}]');
INSERT INTO `emailtemplates` (`email_id`, `email_title`, `email_fromname`, `email_plaintext`, `email_disabled`, `email_content`) VALUES
(3, 'Password Reset - Confirmation', 'A1 Lands', 'false', 0, '[{\"lang\":\"en\",\"message\":\"<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n<\\/head>\\r\\n<body>\\r\\n<p><!-- [if !mso]> --> <!--<![endif]--> <!-- [if !mso]><!--><!--<![endif]--> <!-- [if mso]>\\r\\n<xml>\\r\\n<o:OfficeDocumentSettings>\\r\\n<o:AllowPNG\\/>\\r\\n<o:PixelsPerInch>96<\\/o:PixelsPerInch>\\r\\n<\\/o:OfficeDocumentSettings>\\r\\n<\\/xml>\\r\\n<![endif]--> <!-- [if lte mso 11]>\\r\\n<style type=\\\"text\\/css\\\">\\r\\n.outlook-group-fix { width:100% !important; }\\r\\n<\\/style>\\r\\n<![endif]--><\\/p>\\r\\n<div style=\\\"background-color: #f9f9f9;\\\"><!-- [if mso | IE]>\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #f9f9f9; background-color: #f9f9f9; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #f9f9f9; background-color: #f9f9f9; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border-bottom: #F44336 solid 5px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #fff; background-color: #fff; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #fff; background-color: #fff; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: #dddddd solid 1px; border-top: 0px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table style=\\\"vertical-align: bottom;\\\" role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: collapse; border-spacing: 0px;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 160px;\\\"><img style=\\\"border: 0; display: block; outline: none; text-decoration: none; width: 100%;\\\" src=\\\"{LOGO_URL}\\\" width=\\\"160\\\" height=\\\"auto\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-bottom: 40px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 24px; font-weight: bold; line-height: 1; text-align: center; color: #555;\\\">Password Changed!<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\">Hi {USER_NAME},<br \\/><br \\/>Your password has been changed. <br \\/><br \\/>Didn&rsquo;t change your password? <a style=\\\"color: #2f67f6;\\\" href=\\\"{SITE_DOMAIN}\\\">Contact Support<\\/a> so we can make sure no one else is trying to access your account.<br \\/><br \\/>Use the button below to return to the login page:<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-top: 30px; padding-bottom: 50px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: separate; line-height: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: none; border-radius: 3px; color: #ffffff; cursor: auto; padding: 15px 25px;\\\" role=\\\"presentation\\\" align=\\\"center\\\" valign=\\\"middle\\\" bgcolor=\\\"#F44336\\\"><a style=\\\"background: #F44336; color: #ffffff; font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 15px; font-weight: normal; line-height: 120%; margin: 0; text-decoration: none; text-transform: none;\\\" href=\\\"{SIGNIN_URL}\\\"> Login to Your Account<\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 14px; line-height: 20px; text-align: left; color: #525252;\\\">Cheers,<br \\/><a style=\\\"color: #525252;\\\" href=\\\"{SITE_DOMAIN}\\\">{SITE_NAME}<\\/a><\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"vertical-align: bottom; padding: 0;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 0; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 12px; font-weight: 300; line-height: 1; text-align: center; color: #575757;\\\">{SITE_NAME}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n<![endif]--><\\/div>\\r\\n<\\/body>\\r\\n<\\/html>\",\"subject\":\"Notification\"},{\"lang\":\"ar\",\"message\":\"<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n<\\/head>\\r\\n<body>\\r\\n<p><!-- [if !mso]> --> <!--<![endif]--> <!-- [if !mso]><!--><!--<![endif]--> <!-- [if mso]>\\r\\n<xml>\\r\\n<o:OfficeDocumentSettings>\\r\\n<o:AllowPNG\\/>\\r\\n<o:PixelsPerInch>96<\\/o:PixelsPerInch>\\r\\n<\\/o:OfficeDocumentSettings>\\r\\n<\\/xml>\\r\\n<![endif]--> <!-- [if lte mso 11]>\\r\\n<style type=\\\"text\\/css\\\">\\r\\n.outlook-group-fix { width:100% !important; }\\r\\n<\\/style>\\r\\n<![endif]--><\\/p>\\r\\n<div style=\\\"background-color: #f9f9f9;\\\"><!-- [if mso | IE]>\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #f9f9f9; background-color: #f9f9f9; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #f9f9f9; background-color: #f9f9f9; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border-bottom: #F44336 solid 5px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #fff; background-color: #fff; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #fff; background-color: #fff; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: #dddddd solid 1px; border-top: 0px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table style=\\\"vertical-align: bottom;\\\" role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: collapse; border-spacing: 0px;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 160px;\\\"><img style=\\\"border: 0; display: block; outline: none; text-decoration: none; width: 100%;\\\" src=\\\"{LOGO_URL}\\\" width=\\\"160\\\" height=\\\"auto\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-bottom: 40px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 24px; font-weight: bold; line-height: 1; text-align: center; color: #555;\\\">\\u062a\\u0645 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0633\\u0631!<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\"><span style=\\\"color: #555555; font-family: Helvetica Neue, Arial, sans-serif;\\\"><span style=\\\"font-size: 16px;\\\">\\u0645\\u0631\\u062d\\u0628\\u0627 {USER_NAME},<\\/span><\\/span><br \\/><br \\/><span style=\\\"color: #555555; font-family: Helvetica Neue, Arial, sans-serif;\\\"><span style=\\\"font-size: 16px;\\\">\\u062a\\u0645 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0633\\u0631 \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0643.<\\/span><\\/span><\\/div>\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\"><br \\/><span style=\\\"color: #555555; font-family: Helvetica Neue, Arial, sans-serif;\\\"><span style=\\\"font-size: 16px;\\\">\\u0644\\u0645 \\u062a\\u063a\\u064a\\u0631 \\u0643\\u0644\\u0645\\u0629 \\u0645\\u0631\\u0648\\u0631\\u0643\\u061f <a href=\\\"{SITE_DOMAIN}\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">\\u0627\\u062a\\u0635\\u0644 \\u0628\\u0627\\u0644\\u062f\\u0639\\u0645<\\/a> \\u062d\\u062a\\u0649 \\u0646\\u062a\\u0645\\u0643\\u0646 \\u0645\\u0646 \\u0627\\u0644\\u062a\\u0623\\u0643\\u062f \\u0645\\u0646 \\u0639\\u062f\\u0645 \\u0645\\u062d\\u0627\\u0648\\u0644\\u0629 \\u0623\\u064a \\u0634\\u062e\\u0635 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u0648\\u0635\\u0648\\u0644 \\u0625\\u0644\\u0649 \\u062d\\u0633\\u0627\\u0628\\u0643.<\\/span><\\/span><br \\/><br \\/><span style=\\\"color: #555555; font-family: Helvetica Neue, Arial, sans-serif;\\\"><span style=\\\"font-size: 16px;\\\">\\u0627\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0627\\u0644\\u0632\\u0631 \\u0623\\u062f\\u0646\\u0627\\u0647 \\u0644\\u0644\\u0639\\u0648\\u062f\\u0629 \\u0625\\u0644\\u0649 \\u0635\\u0641\\u062d\\u0629 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644:<\\/span><\\/span><\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-top: 30px; padding-bottom: 50px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: separate; line-height: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: none; border-radius: 3px; color: #ffffff; cursor: auto; padding: 15px 25px;\\\" role=\\\"presentation\\\" align=\\\"center\\\" valign=\\\"middle\\\" bgcolor=\\\"#F44336\\\"><a style=\\\"background: #F44336; color: #ffffff; font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 15px; font-weight: normal; line-height: 120%; margin: 0; text-decoration: none; text-transform: none;\\\" href=\\\"{SIGNIN_URL}\\\"> \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644<\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 14px; line-height: 20px; text-align: left; color: #525252;\\\">\\u0645\\u0639 \\u062a\\u062d\\u064a\\u0627\\u062a\\u064a,<br \\/><a style=\\\"color: #525252;\\\" href=\\\"{SITE_DOMAIN}\\\">{SITE_NAME}<\\/a><\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"vertical-align: bottom; padding: 0;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 0; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 12px; font-weight: 300; line-height: 1; text-align: center; color: #575757;\\\">{SITE_NAME}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n<![endif]--><\\/div>\\r\\n<\\/body>\\r\\n<\\/html>\",\"subject\":\"\\u0625\\u0634\\u0639\\u0627\\u0631\"},{\"lang\":\"es\",\"message\":\"<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n<\\/head>\\r\\n<body>\\r\\n<p><!-- [if !mso]> --> <!--<![endif]--> <!-- [if !mso]><!--><!--<![endif]--> <!-- [if mso]>\\r\\n<xml>\\r\\n<o:OfficeDocumentSettings>\\r\\n<o:AllowPNG\\/>\\r\\n<o:PixelsPerInch>96<\\/o:PixelsPerInch>\\r\\n<\\/o:OfficeDocumentSettings>\\r\\n<\\/xml>\\r\\n<![endif]--> <!-- [if lte mso 11]>\\r\\n<style type=\\\"text\\/css\\\">\\r\\n.outlook-group-fix { width:100% !important; }\\r\\n<\\/style>\\r\\n<![endif]--><\\/p>\\r\\n<div style=\\\"background-color: #f9f9f9;\\\"><!-- [if mso | IE]>\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #f9f9f9; background-color: #f9f9f9; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #f9f9f9; background-color: #f9f9f9; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border-bottom: #F44336 solid 5px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #fff; background-color: #fff; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #fff; background-color: #fff; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: #dddddd solid 1px; border-top: 0px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table style=\\\"vertical-align: bottom;\\\" role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: collapse; border-spacing: 0px;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 160px;\\\"><img style=\\\"border: 0; display: block; outline: none; text-decoration: none; width: 100%;\\\" src=\\\"{LOGO_URL}\\\" width=\\\"160\\\" height=\\\"auto\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-bottom: 40px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 24px; font-weight: bold; line-height: 1; text-align: center; color: #555;\\\">&iexcl;Contrase&ntilde;a Cambiada!<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\"><span style=\\\"color: #555555; font-family: Helvetica Neue, Arial, sans-serif;\\\"><span style=\\\"font-size: 16px;\\\">Hola {USER_NAME},<\\/span><\\/span><br \\/><br \\/><span style=\\\"color: #555555; font-family: Helvetica Neue, Arial, sans-serif;\\\"><span style=\\\"font-size: 16px;\\\">Tu contrase&ntilde;a ha sido cambiada. <\\/span><\\/span><br \\/><br \\/><span style=\\\"color: #555555; font-family: Helvetica Neue, Arial, sans-serif;\\\"><span style=\\\"font-size: 16px;\\\">&iquest;No cambiaste tu contrase&ntilde;a? <a href=\\\"{SITE_DOMAIN}\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">Comun&iacute;quese con Soporte<\\/a> para que podamos asegurarnos de que nadie m&aacute;s intente acceder a su cuenta.<\\/span><\\/span><br \\/><br \\/><span style=\\\"color: #555555; font-family: Helvetica Neue, Arial, sans-serif;\\\"><span style=\\\"font-size: 16px;\\\">Utilice el bot&oacute;n de abajo para volver a la p&aacute;gina de inicio de sesi&oacute;n:<\\/span><\\/span><\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-top: 30px; padding-bottom: 50px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: separate; line-height: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: none; border-radius: 3px; color: #ffffff; cursor: auto; padding: 15px 25px;\\\" role=\\\"presentation\\\" align=\\\"center\\\" valign=\\\"middle\\\" bgcolor=\\\"#F44336\\\"><a style=\\\"background: #F44336; color: #ffffff; font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 15px; font-weight: normal; line-height: 120%; margin: 0; text-decoration: none; text-transform: none;\\\" href=\\\"{SIGNIN_URL}\\\"> Ingrese a su cuenta<\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 14px; line-height: 20px; text-align: left; color: #525252;\\\">Saludos,<br \\/><a style=\\\"color: #525252;\\\" href=\\\"{SITE_DOMAIN}\\\">{SITE_NAME}<\\/a><\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"vertical-align: bottom; padding: 0;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 0; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 12px; font-weight: 300; line-height: 1; text-align: center; color: #575757;\\\">{SITE_NAME}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n<![endif]--><\\/div>\\r\\n<\\/body>\\r\\n<\\/html>\",\"subject\":\"Notificaci\\u00f3n\"}]'),
(4, 'Contact Form Notification', 'A1 Lands', 'false', 0, '[{\"message\":\"<!DOCTYPE HTML PUBLIC \\\"-\\/\\/W3C\\/\\/DTD XHTML 1.0 Transitional \\/\\/EN\\\" \\\"http:\\/\\/www.w3.org\\/TR\\/xhtml1\\/DTD\\/xhtml1-transitional.dtd\\\"><html><head><title><\\/title><meta http-equiv=\\\"Content-Type\\\" content=\\\"text\\/html; charset=utf-8\\\">\\r\\n<![endif]--><\\/head><body>\\r\\n<p><!-- [if !mso]> --> <!--<![endif]--> <!-- [if !mso]><!--><!--<![endif]--> <!-- [if mso]>\\r\\n<xml>\\r\\n<o:OfficeDocumentSettings>\\r\\n<o:AllowPNG\\/>\\r\\n<o:PixelsPerInch>96<\\/o:PixelsPerInch>\\r\\n<\\/o:OfficeDocumentSettings>\\r\\n<\\/xml>\\r\\n<![endif]--> <!-- [if lte mso 11]>\\r\\n<style type=\\\"text\\/css\\\">\\r\\n.outlook-group-fix { width:100% !important; }\\r\\n<\\/style>\\r\\n<![endif]--><\\/p>\\r\\n<div style=\\\"background-color: #f9f9f9;\\\"><!-- [if mso | IE]>\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #f9f9f9; background-color: #f9f9f9; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #f9f9f9; background-color: #f9f9f9; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border-bottom: #333957 solid 5px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #fff; background-color: #fff; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #fff; background-color: #fff; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: #dddddd solid 1px; border-top: 0px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table style=\\\"vertical-align: bottom;\\\" role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: collapse; border-spacing: 0px;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 130px;\\\"><img style=\\\"border: 0; display: block; outline: none; text-decoration: none; width: 100%;\\\" src=\\\"{LOGO_URL}\\\" width=\\\"130\\\" height=\\\"auto\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 24px; font-weight: bold; line-height: 1; text-align: center; color: #555;\\\">Contact Form Notification<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-bottom: 30px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: center; color: #555;\\\">You have just receive a new message<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\"><strong>Name:<\\/strong> {USER_NAME}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\"><strong>Email:<\\/strong> {USER_EMAIL}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\"><strong>Phone:<\\/strong> {USER_PHONE}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-bottom: 30px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\"><strong>Message:<\\/strong><br \\/><br \\/>{USER_MESSAGE}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"vertical-align: bottom; padding: 0;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 0; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 12px; font-weight: 300; line-height: 1; text-align: center; color: #575757;\\\">{SITE_NAME}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n<![endif]--><\\/div>\\r\\n<\\/body><\\/html>\",\"subject\":\"Notification\"}]'),
(5, 'Property Form Notification', 'A1 Lands', 'false', 0, '[{\"message\":\"<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n<\\/head>\\r\\n<body>\\r\\n<p><!-- [if !mso]> --> <!--<![endif]--> <!-- [if !mso]><!--><!--<![endif]--> <!-- [if mso]>\\r\\n<xml>\\r\\n<o:OfficeDocumentSettings>\\r\\n<o:AllowPNG\\/>\\r\\n<o:PixelsPerInch>96<\\/o:PixelsPerInch>\\r\\n<\\/o:OfficeDocumentSettings>\\r\\n<\\/xml>\\r\\n<![endif]--> <!-- [if lte mso 11]>\\r\\n<style type=\\\"text\\/css\\\">\\r\\n.outlook-group-fix { width:100% !important; }\\r\\n<\\/style>\\r\\n<![endif]--><\\/p>\\r\\n<div style=\\\"background-color: #f9f9f9;\\\"><!-- [if mso | IE]>\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #f9f9f9; background-color: #f9f9f9; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #f9f9f9; background-color: #f9f9f9; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border-bottom: #333957 solid 5px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #fff; background-color: #fff; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #fff; background-color: #fff; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: #dddddd solid 1px; border-top: 0px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table style=\\\"vertical-align: bottom;\\\" role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: collapse; border-spacing: 0px;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 130px;\\\"><img style=\\\"border: 0; display: block; outline: none; text-decoration: none; width: 100%;\\\" src=\\\"{LOGO_URL}\\\" width=\\\"130\\\" height=\\\"auto\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 24px; font-weight: bold; line-height: 1; text-align: center; color: #555;\\\">Property Form Notification<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-bottom: 30px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: center; color: #555;\\\">You have just receive a new message<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\"><strong>Name:<\\/strong> {USER_NAME}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\"><strong>Email:<\\/strong> {USER_EMAIL}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\"><strong>Phone:<\\/strong> {USER_PHONE}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\"><strong>Reference:<\\/strong> <a style=\\\"color: #2f67f6;\\\" href=\\\"{PROPERTY_URL}\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">{PROPERTY_REFERENCE}<\\/a><\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-bottom: 30px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: left; color: #555;\\\"><strong>Message:<\\/strong><br \\/><br \\/>{USER_MESSAGE}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"vertical-align: bottom; padding: 0;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 0; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 12px; font-weight: 300; line-height: 1; text-align: center; color: #575757;\\\">{SITE_NAME}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n<![endif]--><\\/div>\\r\\n<\\/body>\\r\\n<\\/html>\",\"subject\":\"Notification\"}]');
INSERT INTO `emailtemplates` (`email_id`, `email_title`, `email_fromname`, `email_plaintext`, `email_disabled`, `email_content`) VALUES
(6, 'Send to Friend', 'A1 Lands', 'false', 0, '[{\"lang\":\"en\",\"message\":\"<!doctype html>\\r\\n<html xmlns=\\\"http:\\/\\/www.w3.org\\/1999\\/xhtml\\\" xmlns:v=\\\"urn:schemas-microsoft-com:vml\\\" xmlns:o=\\\"urn:schemas-microsoft-com:office:office\\\">\\r\\n\\r\\n<head>\\r\\n<title>\\r\\n\\r\\n<\\/title>\\r\\n<!--[if !mso]> -->\\r\\n<meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"IE=edge\\\">\\r\\n<!--<![endif]-->\\r\\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text\\/html; charset=UTF-8\\\">\\r\\n<meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1\\\">\\r\\n<style type=\\\"text\\/css\\\">\\r\\n#outlook a {\\r\\npadding: 0;\\r\\n}\\r\\n\\r\\n.ReadMsgBody {\\r\\nwidth: 100%;\\r\\n}\\r\\n\\r\\n.ExternalClass {\\r\\nwidth: 100%;\\r\\n}\\r\\n\\r\\n.ExternalClass * {\\r\\nline-height: 100%;\\r\\n}\\r\\n\\r\\nbody {\\r\\nmargin: 0;\\r\\npadding: 0;\\r\\n-webkit-text-size-adjust: 100%;\\r\\n-ms-text-size-adjust: 100%;\\r\\n}\\r\\n\\r\\ntable,\\r\\ntd {\\r\\nborder-collapse: collapse;\\r\\nmso-table-lspace: 0pt;\\r\\nmso-table-rspace: 0pt;\\r\\n}\\r\\n\\r\\nimg {\\r\\nborder: 0;\\r\\nheight: auto;\\r\\nline-height: 100%;\\r\\noutline: none;\\r\\ntext-decoration: none;\\r\\n-ms-interpolation-mode: bicubic;\\r\\n}\\r\\n\\r\\np {\\r\\ndisplay: block;\\r\\nmargin: 13px 0;\\r\\n}\\r\\n<\\/style>\\r\\n<!--[if !mso]><!-->\\r\\n<style type=\\\"text\\/css\\\">\\r\\n@media only screen and (max-width:480px) {\\r\\n@-ms-viewport {\\r\\nwidth: 320px;\\r\\n}\\r\\n@viewport {\\r\\nwidth: 320px;\\r\\n}\\r\\n}\\r\\n<\\/style>\\r\\n<!--<![endif]-->\\r\\n<!--[if mso]>\\r\\n<xml>\\r\\n<o:OfficeDocumentSettings>\\r\\n<o:AllowPNG\\/>\\r\\n<o:PixelsPerInch>96<\\/o:PixelsPerInch>\\r\\n<\\/o:OfficeDocumentSettings>\\r\\n<\\/xml>\\r\\n<![endif]-->\\r\\n<!--[if lte mso 11]>\\r\\n<style type=\\\"text\\/css\\\">\\r\\n.outlook-group-fix { width:100% !important; }\\r\\n<\\/style>\\r\\n<![endif]-->\\r\\n\\r\\n\\r\\n<style type=\\\"text\\/css\\\">\\r\\n@media only screen and (min-width:480px) {\\r\\n.mj-column-per-100 {\\r\\nwidth: 100% !important;\\r\\n}\\r\\n}\\r\\n<\\/style>\\r\\n\\r\\n\\r\\n<style type=\\\"text\\/css\\\">\\r\\n<\\/style>\\r\\n\\r\\n<\\/head>\\r\\n\\r\\n<body style=\\\"background-color:#f9f9f9;\\\">\\r\\n<p><!-- [if !mso]> --> <!--<![endif]--> <!-- [if !mso]><!--><!--<![endif]--> <!-- [if mso]>\\r\\n<xml>\\r\\n<o:OfficeDocumentSettings>\\r\\n<o:AllowPNG\\/>\\r\\n<o:PixelsPerInch>96<\\/o:PixelsPerInch>\\r\\n<\\/o:OfficeDocumentSettings>\\r\\n<\\/xml>\\r\\n<![endif]--> <!-- [if lte mso 11]>\\r\\n<style type=\\\"text\\/css\\\">\\r\\n.outlook-group-fix { width:100% !important; }\\r\\n<\\/style>\\r\\n<![endif]--><\\/p>\\r\\n<div style=\\\"background-color: #f9f9f9;\\\"><!-- [if mso | IE]>\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #f9f9f9; background-color: #f9f9f9; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #f9f9f9; background-color: #f9f9f9; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border-bottom: #F44336 solid 5px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #fff; background-color: #fff; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #fff; background-color: #fff; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: #dddddd solid 1px; border-top: 0px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table style=\\\"vertical-align: bottom;\\\" role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: collapse; border-spacing: 0px;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 160px;\\\"><img style=\\\"border: 0; display: block; outline: none; text-decoration: none; width: 100%;\\\" src=\\\"{LOGO_URL}\\\" width=\\\"160\\\" height=\\\"auto\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-bottom: 40px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 24px; font-weight: bold; line-height: 1; text-align: center; color: #555;\\\">Hi! Your friend {SENDER_NAME} have found this property that may interest you:<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">{\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: center; color: #555;\\\">{PROPERTY_TITLE}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: collapse; border-spacing: 0px;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 350px;\\\"><img style=\\\"border: 0; display: block; outline: none; text-decoration: none; width: 100%;\\\" src=\\\"{PROPERTY_IMAGE}\\\" width=\\\"310\\\" height=\\\"auto\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">{\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 24px; font-weight: bold; line-height: 22px; text-align: center; color: #f44336;\\\">{PROPERTY_PRICE}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: center; color: #555;\\\">For more information please click on the button below:<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-top: 30px; padding-bottom: 50px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: separate; line-height: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: none; border-radius: 3px; color: #ffffff; cursor: auto; padding: 15px 25px;\\\" role=\\\"presentation\\\" align=\\\"center\\\" valign=\\\"middle\\\" bgcolor=\\\"#F44336\\\"><a style=\\\"background: #F44336; color: #ffffff; font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 15px; font-weight: normal; line-height: 120%; margin: 0; text-decoration: none; text-transform: none;\\\" href=\\\"{PROPERTY_URL}\\\"> Yes! I\'m Interested<\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 14px; line-height: 20px; text-align: left; color: #525252;\\\">Cheers,<br \\/><a style=\\\"color: #525252;\\\" href=\\\"{SITE_DOMAIN}\\\">{SITE_NAME}<\\/a><\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"vertical-align: bottom; padding: 0;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 0; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 12px; font-weight: 300; line-height: 1; text-align: center; color: #575757;\\\">Your friend sender email is: <a style=\\\"font-size: 12px; color: #525252;\\\" href=\\\"mailto:{SENDER_EMAIL}\\\">{SENDER_EMAIL}<\\/a><\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n<![endif]--><\\/div>\\r\\n<\\/body>\\r\\n\\r\\n<\\/html>\",\"subject\":\"Notification\"},{\"lang\":\"ar\",\"message\":\"<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n<\\/head>\\r\\n<body>\\r\\n<p><!-- [if !mso]> --> <!--<![endif]--> <!-- [if !mso]><!--><!--<![endif]--> <!-- [if mso]>\\r\\n<xml>\\r\\n<o:OfficeDocumentSettings>\\r\\n<o:AllowPNG\\/>\\r\\n<o:PixelsPerInch>96<\\/o:PixelsPerInch>\\r\\n<\\/o:OfficeDocumentSettings>\\r\\n<\\/xml>\\r\\n<![endif]--> <!-- [if lte mso 11]>\\r\\n<style type=\\\"text\\/css\\\">\\r\\n.outlook-group-fix { width:100% !important; }\\r\\n<\\/style>\\r\\n<![endif]--><\\/p>\\r\\n<div style=\\\"background-color: #f9f9f9;\\\"><!-- [if mso | IE]>\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #f9f9f9; background-color: #f9f9f9; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #f9f9f9; background-color: #f9f9f9; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border-bottom: #F44336 solid 5px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #fff; background-color: #fff; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #fff; background-color: #fff; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: #dddddd solid 1px; border-top: 0px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table style=\\\"vertical-align: bottom;\\\" role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: collapse; border-spacing: 0px;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 160px;\\\"><img style=\\\"border: 0; display: block; outline: none; text-decoration: none; width: 100%;\\\" src=\\\"{LOGO_URL}\\\" width=\\\"160\\\" height=\\\"auto\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-bottom: 40px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 24px; font-weight: bold; line-height: 1; text-align: center; color: #555;\\\">\\u0645\\u0631\\u062d\\u0628\\u0627! \\u0635\\u062f\\u064a\\u0642\\u0643 {SENDER_NAME} \\u0648\\u062c\\u062f \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0639\\u0642\\u0627\\u0631 \\u0627\\u0644\\u0630\\u064a \\u0642\\u062f \\u064a\\u062b\\u064a\\u0631 \\u0627\\u0647\\u062a\\u0645\\u0627\\u0645\\u0643:<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">{\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: center; color: #555;\\\">{PROPERTY_TITLE}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: collapse; border-spacing: 0px;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 350px;\\\"><img style=\\\"border: 0; display: block; outline: none; text-decoration: none; width: 100%;\\\" src=\\\"{PROPERTY_IMAGE}\\\" width=\\\"310\\\" height=\\\"auto\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">{\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 24px; font-weight: bold; line-height: 22px; text-align: center; color: #f44336;\\\">{PROPERTY_PRICE}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: center; color: #555;\\\">\\u0644\\u0645\\u0632\\u064a\\u062f \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0631\\u062c\\u0627\\u0621 \\u0627\\u0644\\u0636\\u063a\\u0637 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0632\\u0631 \\u0623\\u062f\\u0646\\u0627\\u0647:<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-top: 30px; padding-bottom: 50px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: separate; line-height: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: none; border-radius: 3px; color: #ffffff; cursor: auto; padding: 15px 25px;\\\" role=\\\"presentation\\\" align=\\\"center\\\" valign=\\\"middle\\\" bgcolor=\\\"#F44336\\\"><a style=\\\"background: #F44336; color: #ffffff; font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 15px; font-weight: normal; line-height: 120%; margin: 0; text-decoration: none; text-transform: none;\\\" href=\\\"{PROPERTY_URL}\\\"> \\u0646\\u0639\\u0645! \\u0627\\u0646\\u0627 \\u0645\\u0647\\u062a\\u0645<\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 14px; line-height: 20px; text-align: left; color: #525252;\\\">\\u0645\\u0639 \\u062a\\u062d\\u064a\\u0627\\u062a\\u064a,<br \\/><a style=\\\"color: #525252;\\\" href=\\\"{SITE_DOMAIN}\\\">{SITE_NAME}<\\/a><\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"vertical-align: bottom; padding: 0;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 0; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 12px; font-weight: 300; line-height: 1; text-align: center; color: #575757;\\\">\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u0635\\u062f\\u064a\\u0642\\u0643 \\u0627\\u0644\\u0645\\u0631\\u0633\\u0644 \\u0647\\u0648: <a style=\\\"font-size: 12px; color: #525252;\\\" href=\\\"mailto:{SENDER_EMAIL}\\\">{SENDER_EMAIL}<\\/a><\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n<![endif]--><\\/div>\\r\\n<\\/body>\\r\\n<\\/html>\",\"subject\":\"\\u0625\\u0634\\u0639\\u0627\\u0631\"},{\"lang\":\"es\",\"message\":\"<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n<\\/head>\\r\\n<body>\\r\\n<p><!-- [if !mso]> --> <!--<![endif]--> <!-- [if !mso]><!--><!--<![endif]--> <!-- [if mso]>\\r\\n<xml>\\r\\n<o:OfficeDocumentSettings>\\r\\n<o:AllowPNG\\/>\\r\\n<o:PixelsPerInch>96<\\/o:PixelsPerInch>\\r\\n<\\/o:OfficeDocumentSettings>\\r\\n<\\/xml>\\r\\n<![endif]--> <!-- [if lte mso 11]>\\r\\n<style type=\\\"text\\/css\\\">\\r\\n.outlook-group-fix { width:100% !important; }\\r\\n<\\/style>\\r\\n<![endif]--><\\/p>\\r\\n<div style=\\\"background-color: #f9f9f9;\\\"><!-- [if mso | IE]>\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #f9f9f9; background-color: #f9f9f9; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #f9f9f9; background-color: #f9f9f9; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border-bottom: #F44336 solid 5px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"background: #fff; background-color: #fff; margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"background: #fff; background-color: #fff; width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: #dddddd solid 1px; border-top: 0px; direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table style=\\\"vertical-align: bottom;\\\" role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: collapse; border-spacing: 0px;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 160px;\\\"><img style=\\\"border: 0; display: block; outline: none; text-decoration: none; width: 100%;\\\" src=\\\"{LOGO_URL}\\\" width=\\\"160\\\" height=\\\"auto\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-bottom: 40px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 24px; font-weight: bold; line-height: 1; text-align: center; color: #555;\\\">&iexcl;Hola! Su amigo {SENDER_NAME} encontr&oacute; esta propiedad que puede interesarle:<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">{\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: center; color: #555;\\\">{PROPERTY_TITLE}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: collapse; border-spacing: 0px;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"width: 350px;\\\"><img style=\\\"border: 0; display: block; outline: none; text-decoration: none; width: 100%;\\\" src=\\\"{PROPERTY_IMAGE}\\\" width=\\\"310\\\" height=\\\"auto\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">{\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 24px; font-weight: bold; line-height: 22px; text-align: center; color: #f44336;\\\">{PROPERTY_PRICE}<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 16px; line-height: 22px; text-align: center; color: #555;\\\">Para obtener m&aacute;s informaci&oacute;n, haga clic en el bot&oacute;n a continuaci&oacute;n:<\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; padding-top: 30px; padding-bottom: 50px; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<table style=\\\"border-collapse: separate; line-height: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"border: none; border-radius: 3px; color: #ffffff; cursor: auto; padding: 15px 25px;\\\" role=\\\"presentation\\\" align=\\\"center\\\" valign=\\\"middle\\\" bgcolor=\\\"#F44336\\\"><a style=\\\"background: #F44336; color: #ffffff; font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 15px; font-weight: normal; line-height: 120%; margin: 0; text-decoration: none; text-transform: none;\\\" href=\\\"{PROPERTY_URL}\\\"> &iexcl;S&iacute;! Estoy interesado<\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 10px 25px; word-break: break-word;\\\" align=\\\"left\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 14px; line-height: 20px; text-align: left; color: #525252;\\\">Saludos,<br \\/><a style=\\\"color: #525252;\\\" href=\\\"{SITE_DOMAIN}\\\">{SITE_NAME}<\\/a><\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n\\r\\n<table\\r\\nalign=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"width:600px;\\\" width=\\\"600\\\"\\r\\n>\\r\\n<tr>\\r\\n<td style=\\\"line-height:0px;font-size:0px;mso-line-height-rule:exactly;\\\">\\r\\n<![endif]-->\\r\\n<div style=\\\"margin: 0px auto; max-width: 600px;\\\">\\r\\n<table style=\\\"width: 100%;\\\" role=\\\"presentation\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"direction: ltr; font-size: 0px; padding: 20px 0; text-align: center; vertical-align: top;\\\"><!-- [if mso | IE]>\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n\\r\\n<tr>\\r\\n\\r\\n<td\\r\\nstyle=\\\"vertical-align:bottom;width:600px;\\\"\\r\\n>\\r\\n<![endif]-->\\r\\n<div class=\\\"mj-column-per-100 outlook-group-fix\\\" style=\\\"font-size: 13px; text-align: left; direction: ltr; display: inline-block; vertical-align: bottom; width: 100%;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"vertical-align: bottom; padding: 0;\\\">\\r\\n<table role=\\\"presentation\\\" border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"font-size: 0px; padding: 0; word-break: break-word;\\\" align=\\\"center\\\">\\r\\n<div style=\\\"font-family: \'Helvetica Neue\',Arial,sans-serif; font-size: 12px; font-weight: 300; line-height: 1; text-align: center; color: #575757;\\\">El correo electr&oacute;nico del remitente es: <a style=\\\"font-size: 12px; color: #525252;\\\" href=\\\"mailto:{SENDER_EMAIL}\\\">{SENDER_EMAIL}<\\/a><\\/div>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n\\r\\n<\\/tr>\\r\\n\\r\\n<\\/table>\\r\\n<![endif]--><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<!-- [if mso | IE]>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/table>\\r\\n<![endif]--><\\/div>\\r\\n<\\/body>\\r\\n<\\/html>\",\"subject\":\"Notificaci\\u00f3n\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE IF NOT EXISTS `favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `item`, `user`) VALUES
(1, 2, 1),
(2, 2, 3),
(5, 12, 4),
(6, 11, 4),
(11, 16, 4),
(12, 4, 4),
(14, 31, 8),
(15, 29, 4),
(18, 36, 9),
(21, 36, 3);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_name` varchar(50) NOT NULL,
  `language_code` varchar(11) NOT NULL,
  `language_type` varchar(11) NOT NULL,
  `language_translated` tinyint(1) NOT NULL DEFAULT 0,
  `language_status` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`language_id`),
  UNIQUE KEY `language_code` (`language_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`language_id`, `language_name`, `language_code`, `language_type`, `language_translated`, `language_status`) VALUES
(1, 'English', 'en', 'ltr', 1, 1),
(2, 'العربية', 'ar', 'rtl', 1, 0),
(3, 'Español', 'es', 'ltr', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
CREATE TABLE IF NOT EXISTS `leads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` text DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `link`, `name`, `email`, `phone`, `msg`, `date_added`) VALUES
(1, 'https://www.a1lands.com/property/2/single-owner-500sq-yards-open-plot-near-hyderabad-airport', 'kashan khan', 'kashankhan@gmail.com', '9999999999', 'weqweqI\'m interested in this property and I\'d like to know more details.', '2024-09-17 07:41:57'),
(2, 'https://www.a1lands.com/property/2/single-owner-500sq-yards-open-plot-near-hyderabad-airport', 'varaprasad', 'varaprasadz@gmail.com', '9989822497', 'I\'m interested in this property and I\'d like to know more details.', '2024-09-19 11:19:41'),
(3, 'https://a1lands.com/property/9/9-acres-32-gunthas', 'vara prasad', 'varatestnov@maildrop.cc', '9989822497', 'I\'m interested in this property and I\'d like to know more details.', '2024-12-18 04:03:08'),
(4, 'https://a1lands.com/property/31/2bhk-flat-in-kompally', 'testing', 'testing@gmail.com', '8008888445', 'yes I\'m interested in this property and I\'d like to know more details.', '2025-02-20 17:10:25'),
(5, 'https://a1lands.com/property/29/238sqyd', 'test Raghavendra', 'testraghavendra@gmail.com', '8888888888', 'I\'m interested in this property and I\'d like to know more details.', '2025-03-22 07:05:03'),
(6, 'https://a1lands.com/property/30/1110sqyd', 'Naga Vara Prasad S', 'varaprasadz@gmail.com', '9989822497', 'I\'m interested in this property and I\'d like to know more details.', '2025-05-20 16:26:37'),
(7, 'https://a1lands.com/property/30/1110sqyd', 'Naga Vara Prasad S', 'varaprasadz@gmail.com', '9989822497', 'I\'m interested in this property and I\'d like to know more details.', '2025-05-20 16:26:52'),
(8, 'https://a1lands.com/property/30/1110sqyd', 'Asif Ahmed', 'asifahmed715@gmail.com', '8899283923', 'I\'m interested in this property and I\'d like to know more details.', '2025-05-20 16:29:14'),
(9, 'https://a1lands.com/property/31/2bhk-flat-in-kompally', 'Naga Vara Prasad S', 'varaprasadz@gmail.com', '9988822497', 'I\'m interested in this property and I\'d like to know more details.', '2025-06-06 08:09:43'),
(10, 'https://a1lands.com/property/27/327sqyd', 'Naga Vara Prasad S', 'saurabh.r@gmail.com', '9908015175', 'I\'m interested in this property and I\'d like to know more details.', '2025-07-10 07:23:13'),
(11, 'https://a1lands.com/property/31/2bhk-flat-in-kompally', 'HEMACHANDRA PASUPULETI', 'hemachandra.pasupuleti@gmail.com', '9885737450', 'I\'m interested in this property and I\'d like to know more details.', '2025-07-25 06:29:35'),
(12, 'https://a1lands.com/property/35/open-plot-300-sq-yard', 'Hemachandra Pasupuleti', 'hemachandra.pasupuleti@gmail.com', '9877476530', 'I\'m interested in this property and I\'d like to know more details.', '2025-08-10 07:08:00'),
(13, 'https://a1lands.com/property/33/4-acers', 'test Raghavendra', 'testraghavendra@gmail.com', '8888888888', 'I\'m interested in this property and I\'d like to know more details.', '2025-08-10 07:12:02'),
(14, 'https://a1lands.com/property/33/4-acers', 'Test aug', 'testaug@gmail.com', '7777777777', 'I\'m interested in this property and I\'d like to know more details.', '2025-08-10 07:13:25'),
(15, 'https://a1lands.com/property/38/single-owner-500sq-yards-open-plot-near-hyderabad-airport-2', 'Praveen ', 'praveenpedada1436@gmail.com', '7674885365', 'I\'m interested in this property and I\'d like to know more details.', '2025-08-11 07:04:48'),
(16, 'https://a1lands.com/property/4/21guntas-open-land', 'RAGHAVENDER REDDY', 'raghusrdp@gmail.com', '6666666666', 'I\'m interested in this property and I\'d like to know more details.', '2025-08-28 11:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) NOT NULL,
  `menu_header` tinyint(1) DEFAULT 0,
  `menu_footer` tinyint(1) DEFAULT 0,
  `menu_sidebar` tinyint(1) DEFAULT 0,
  `menu_status` tinyint(1) NOT NULL DEFAULT 1,
  `menu_lang` varchar(10) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menu_id`, `menu_name`, `menu_header`, `menu_footer`, `menu_sidebar`, `menu_status`, `menu_lang`) VALUES
(1, 'Header', 1, NULL, NULL, 1, 'en'),
(2, 'Footer', NULL, 1, NULL, 1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

DROP TABLE IF EXISTS `navigations`;
CREATE TABLE IF NOT EXISTS `navigations` (
  `navigation_id` int(11) NOT NULL AUTO_INCREMENT,
  `navigation_order` int(11) NOT NULL,
  `navigation_url` varchar(150) DEFAULT NULL,
  `navigation_label` varchar(50) DEFAULT NULL,
  `navigation_target` varchar(50) NOT NULL,
  `navigation_type` varchar(50) NOT NULL,
  `navigation_page` int(11) DEFAULT NULL,
  `navigation_menu` int(11) NOT NULL,
  PRIMARY KEY (`navigation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`navigation_id`, `navigation_order`, `navigation_url`, `navigation_label`, `navigation_target`, `navigation_type`, `navigation_page`, `navigation_menu`) VALUES
(1, 0, '/', 'Home', '_self', 'custom', NULL, 1),
(2, 2, NULL, NULL, '_self', 'page', 2, 1),
(3, 3, NULL, NULL, '_self', 'page', 3, 1),
(4, 4, NULL, NULL, '_self', 'page', 5, 1),
(5, 5, NULL, NULL, '_self', 'page', 4, 1),
(6, 6, 'services', 'Services', '_blank', 'custom', NULL, 1),
(8, 8, NULL, NULL, '_self', 'page', 8, 1),
(9, 9, NULL, NULL, '_self', 'page', 9, 1),
(12, 10, NULL, NULL, '_blank', 'page', 11, 1),
(13, 1, NULL, NULL, '_self', 'page', 15, 1),
(14, 7, NULL, NULL, '_self', 'page', 12, 1),
(15, 11, NULL, NULL, '_self', 'page', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_visibility` tinyint(1) NOT NULL DEFAULT 1,
  `page_private` tinyint(1) NOT NULL DEFAULT 0,
  `page_footer` tinyint(1) NOT NULL DEFAULT 1,
  `page_ad_header` tinyint(1) NOT NULL DEFAULT 0,
  `page_ad_footer` tinyint(1) NOT NULL DEFAULT 0,
  `page_ad_sidebar` tinyint(1) NOT NULL DEFAULT 0,
  `page_template` varchar(50) NOT NULL DEFAULT 'blank',
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_visibility`, `page_private`, `page_footer`, `page_ad_header`, `page_ad_footer`, `page_ad_sidebar`, `page_template`, `icon`) VALUES
(2, 1, 0, 1, 0, 0, 0, 'properties', NULL),
(3, 1, 0, 1, 0, 0, 0, 'search', NULL),
(4, 1, 0, 1, 0, 0, 0, 'contact', NULL),
(5, 1, 0, 1, 0, 0, 0, 'blog', NULL),
(6, 1, 0, 1, 0, 0, 0, 'privacy', NULL),
(7, 1, 0, 1, 0, 0, 0, 'terms', NULL),
(8, 1, 0, 1, 0, 0, 0, 'contact', '5V7DM9t1cPaC.jpeg'),
(9, 1, 0, 1, 0, 0, 0, 'contact', 'oMPvmCxhXAkg.png'),
(10, 0, 0, 1, 0, 0, 0, 'contact', 'C65wSkI9mvbu.png'),
(11, 1, 0, 1, 0, 0, 0, 'contact', 'F1PYNOl8HEp6.png'),
(12, 1, 0, 1, 0, 0, 0, 'contact', '1PXIznqTmeQo.png'),
(13, 1, 0, 1, 0, 0, 0, 'contact', NULL),
(14, 0, 0, 1, 0, 0, 0, 'contact', NULL),
(15, 1, 0, 1, 0, 0, 0, 'specialproperties', NULL),
(16, 1, 0, 1, 0, 0, 0, 'shorlistproperties', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
CREATE TABLE IF NOT EXISTS `partners` (
  `partner_id` int(11) NOT NULL AUTO_INCREMENT,
  `partner_image` varchar(255) NOT NULL,
  `partner_name` varchar(255) NOT NULL,
  `partner_status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`partner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_visibility` tinyint(2) NOT NULL DEFAULT 1,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `post_category` int(11) NOT NULL,
  `post_featured` int(11) NOT NULL,
  `post_image` varchar(255) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `preferred_choice`
--

DROP TABLE IF EXISTS `preferred_choice`;
CREATE TABLE IF NOT EXISTS `preferred_choice` (
  `pc_id` int(11) NOT NULL AUTO_INCREMENT,
  `pc_image` varchar(255) NOT NULL,
  PRIMARY KEY (`pc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
CREATE TABLE IF NOT EXISTS `properties` (
  `pt_id` int(11) NOT NULL AUTO_INCREMENT,
  `pt_reference` varchar(255) NOT NULL,
  `pt_direction` varchar(255) NOT NULL,
  `pt_beds` varchar(255) NOT NULL,
  `pt_baths` varchar(255) NOT NULL,
  `pt_garages` varchar(255) NOT NULL DEFAULT '-',
  `pt_price` varchar(255) NOT NULL,
  `pt_oldprice` varchar(255) NOT NULL,
  `pt_size` varchar(255) NOT NULL,
  `pt_rating` varchar(255) NOT NULL DEFAULT '-',
  `pt_latitude` varchar(255) NOT NULL,
  `pt_longitude` varchar(255) NOT NULL,
  `pt_image` varchar(255) NOT NULL,
  `pt_floor` varchar(255) NOT NULL DEFAULT '-',
  `pt_video` varchar(255) NOT NULL,
  `pt_featured` int(11) NOT NULL,
  `pt_date` datetime NOT NULL DEFAULT current_timestamp(),
  `pt_visibility` tinyint(2) NOT NULL DEFAULT 0,
  `pt_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pt_status` int(11) NOT NULL,
  `pt_type` int(11) NOT NULL,
  `pt_city` int(11) NOT NULL,
  `pt_zone` int(11) DEFAULT NULL,
  `pt_mandal` int(11) NOT NULL DEFAULT 0,
  `pt_approach` varchar(255) DEFAULT NULL,
  `pt_distance` varchar(255) DEFAULT NULL,
  `pt_road` varchar(255) DEFAULT NULL,
  `pt_route` varchar(255) DEFAULT NULL,
  `pt_soil` varchar(255) DEFAULT NULL,
  `pt_electricity` varchar(255) DEFAULT NULL,
  `pt_zone1` varchar(255) DEFAULT NULL,
  `pt_crop` varchar(255) DEFAULT NULL,
  `pt_bore` varchar(255) DEFAULT NULL,
  `pt_fancing` varchar(255) DEFAULT NULL,
  `pt_building` varchar(255) DEFAULT NULL,
  `pt_village` int(11) NOT NULL DEFAULT 0,
  `pt_agent` int(11) NOT NULL,
  `pt_conditions` int(11) NOT NULL,
  `pt_sold` tinyint(2) NOT NULL DEFAULT 0,
  `pt_offer` tinyint(2) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `top_features` text NOT NULL,
  PRIMARY KEY (`pt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`pt_id`, `pt_reference`, `pt_direction`, `pt_beds`, `pt_baths`, `pt_garages`, `pt_price`, `pt_oldprice`, `pt_size`, `pt_rating`, `pt_latitude`, `pt_longitude`, `pt_image`, `pt_floor`, `pt_video`, `pt_featured`, `pt_date`, `pt_visibility`, `pt_updated`, `pt_status`, `pt_type`, `pt_city`, `pt_zone`, `pt_mandal`, `pt_approach`, `pt_distance`, `pt_road`, `pt_route`, `pt_soil`, `pt_electricity`, `pt_zone1`, `pt_crop`, `pt_bore`, `pt_fancing`, `pt_building`, `pt_village`, `pt_agent`, `pt_conditions`, `pt_sold`, `pt_offer`, `user_id`, `top_features`) VALUES
(1, '0', '', '0', '0', '', '36,00,000', '', '1500', '', '17.279821104742215', '78.12499552965164', 'property_1726269022.jpeg', '0', '', 0, '2024-09-13 23:10:22', 1, '2024-10-25 13:02:43', 1, 1, 2, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 2, 0, 0, 0, ''),
(2, '0', 'Test', '0', '0', '', '50,00,000', '', '500', '', '24.712717038140774', '77.48046875', 'property_1726293229.jpg', '0', '', 1, '2024-09-14 05:53:48', 1, '2024-10-25 13:01:38', 1, 2, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 0, ''),
(3, '0', 'Maxime cupidatat ull', '0', '0', '', '309', '', 'Nulla in elit aute ', '', '21.151948574168156', '77.12890625', 'property_1729724141.png', '0', '', 1, '2024-10-23 22:55:40', 1, '2024-10-23 23:36:53', 1, 1, 2, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, 1, 0, 0, 0, ''),
(4, '0', '', '0', '0', '', '1,90,00,000', '', '0.21', '', '17.1251591', '78.3889670', 'property_1729746880.jpg', '0', '', 1, '2024-10-24 05:14:40', 1, '2025-06-08 05:39:48', 1, 2, 2, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 0, '[]'),
(5, '0', 'MAHESHWARAM', '0', '0', '', '6,75,00,000', '', '2.20', '', '17.0996380', '78.3973810', 'property_1729752542.jpg', '0', '', 1, '2024-10-24 06:49:01', 1, '2025-08-22 12:18:49', 1, 2, 2, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 0, '[]'),
(6, '0', ' SHANKARPALLY ROAD, CHEVELLA HIGHWAY', '0', '0', '', '7,88,00,000', '', '9.34', '', '17.3597110', '77.7118320', 'property_1729752925.jpg', '0', '', 1, '2024-10-24 06:55:25', 1, '2024-10-26 11:34:03', 1, 2, 2, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 1, 0, 0, 0, ''),
(7, '0', ' SHANKARPALLY ROAD, CHEVELLA HIGHWAY', '0', '0', '', '10,95,00,000', '', '14.24', '', '17.3630630', '77.7052550', 'property_1729753169.jpg', '0', '', 1, '2024-10-24 06:59:28', 1, '2025-01-10 10:14:58', 1, 2, 2, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, 1, 0, 0, 0, ''),
(8, '0', ' SHANKARPALLY ROAD, CHEVELLA HIGHWAY', '0', '0', '', '8,81,37,500', '', '16.01', '', '17.3854560', '77.7662050', 'property_1729753968.jpg', '0', '', 1, '2024-10-24 07:12:48', 1, '2024-10-26 10:55:43', 1, 2, 2, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 1, 0, 0, 0, ''),
(9, '0', ' SHANKARPALLY ROAD, CHEVELLA HIGHWAY', '0', '0', '', '7,84,00,000', '', '9.32', '', '17.3692260', '77.7200480', 'property_1729754174.jpg', '0', '', 1, '2024-10-24 07:16:14', 1, '2025-01-10 10:16:40', 1, 2, 2, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 1, 0, 0, 0, ''),
(10, '0', ' SHANKARPALLY ROAD, CHEVELLA HIGHWAY', '0', '0', '', '6,72,00,000', '', '5.24', '', '17.4116470', '77.8842790', 'property_1729940364.jpg', '0', '', 1, '2024-10-24 07:18:34', 1, '2025-08-11 04:40:54', 1, 2, 2, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 1, 0, 0, 0, '[]'),
(11, '0', ' MAHESHWARAM TO MACHAPALLY', '0', '0', '', '3,49,80,000', '', '1060 SQYD', '', '17.1344864', '78.4108179', 'property_1729941906.jpg', '0', '', 1, '2024-10-26 11:25:06', 1, '2025-06-07 09:51:19', 1, 9, 2, 2, 9, 'BT ROAD', '11 KM', '-', ' MAHESHWARAM TO MACHAPALLY', '-', '-', '', '-', '-', '-', '-', 14, 1, 1, 0, 0, 0, '[]'),
(12, '0', ' MAHESHWARAM ROUTE', '0', '0', '', '7,21,87,500', '', '1.35', '', '17.1261438', '78.3877623', 'property_1729943143.jpg', '0', '', 1, '2024-10-26 11:45:43', 1, '2025-01-10 10:38:07', 1, 2, 2, 2, 11, 'BT ROAD', '12 KM', '33 FT', ' MAHESHWARAM ROUTE', 'RED SOIL', '-', '', '-', '-', '-', '-', 17, 1, 1, 0, 0, 0, ''),
(13, '', 'North', '', '', '', '50000000', '0', '5.25', '', '', '', 'property_1736436837.jpg', '', '', 0, '2025-01-09 15:33:57', 1, '2025-01-09 15:33:57', 1, 2, 2, 0, 10, 'Yes', '3 Kms', '30 Feet', 'Towards highway', 'Red', 'Yes', '', '', 'yes', 'yes', 'yes', 15, 1, 1, 0, 0, 0, ''),
(14, '0', '', '0', '0', '', '1,90,00,000', '', '267 ', '', '', '', 'property_1736509739.jpg', '0', '', 1, '2025-01-10 11:09:44', 1, '2025-06-07 09:52:23', 1, 9, 2, 3, 12, 'BT ROAD', '12KM', '', 'SHANKARPALLY ', '', 'YES', '', 'NO', '', '', '', 18, 1, 1, 0, 0, 0, '[]'),
(15, '0', '', '0', '0', '', '46,00,00,000', '', '2 AC', '', '17.445686', '78.182673', 'property_1736576633.jpeg', '0', '', 1, '2025-01-11 06:23:52', 1, '2025-01-11 06:31:17', 1, 2, 2, 3, 12, 'BT ROAD', '18KM', '60FT ROAD', 'SHANKARPALLY ROAD, CHEVELLA HIGHWAY', 'BLACK SOIL', 'NO', '', 'NO', 'NO', 'YES', 'NO', 18, 1, 1, 0, 0, 0, ''),
(16, '0', '', '0', '0', '', '5,612,500,000', '', '33 AC', '', '17.444544', '78.196408', 'property_1736578109.jpeg', '0', '', 1, '2025-01-11 06:48:29', 1, '2025-01-11 07:40:17', 1, 2, 2, 3, 12, 'UNDERSTANDING ROAD', '21KM', '24FT ROAD', 'SHANKARPALLY ROAD, CHEVELLA HIGHWAY', 'RED SOIL', 'NO', '', 'NO', 'NO', 'YES', 'NO', 18, 1, 1, 0, 0, 0, ''),
(17, '', '', '', '', '', '5000000000', '0', '2 AC', '', '', '', 'property_1736578298.JPG', '', '', 1, '2025-01-11 06:51:37', 1, '2025-01-11 06:51:37', 1, 2, 2, 0, 12, 'BT ROAD', '18KM', '60FT ROAD', 'SHANKARPALLY ROAD, CHEVELLA HIGHWAY', 'RED SOIL', 'NO', '', 'NO', 'NO', 'YES', 'NO', 18, 1, 2, 0, 0, 0, ''),
(18, '0', '', '0', '0', '', '1,08,87,580', '', '2420', '', '17.247878', '77.989225', 'property_1737036268.jpeg', '0', '', 1, '2025-01-16 13:48:12', 1, '2025-06-07 09:53:17', 1, 9, 2, 2, 1, 'KACHA ROAD', '53', '25FT', '', '', 'NO', '', 'NO', 'NO', 'CEMENT POLES ERECTED AROUND THE BOUNDARY', 'NO', 0, 1, 1, 0, 0, 0, '[]'),
(19, '0', '', '0', '0', '', '99,00,000', '', '600SQYD', '', '17.4737090', '77.9978690', 'property_1737037312.jpeg', '0', '', 1, '2025-01-16 14:21:51', 1, '2025-08-25 14:53:00', 1, 9, 2, 2, 13, 'BT ROAD', '31KM', '60FT ROAD', 'SHANKARPALLY-MOMINPET ROAD', '', 'NO', '', 'NO', 'NO', '', '', 0, 1, 1, 0, 0, 0, '[]'),
(20, '0', '', '0', '0', '', '28,00,000', '', '160SQYD', '', '17.315722', '77.917416', 'property_1737266699.jpeg', '0', '', 1, '2025-01-19 05:59:53', 1, '2025-06-07 09:54:37', 1, 9, 2, 2, 14, 'BT ROAD', '53KM', '40FT ROAD', 'CHEVELLA HIGHWAY', '', 'NO', '', 'NO', '', 'THE PROPERTYIS ENCLOSED BY A WALL ALONG THE BOUNDARY, WHICH IS EQUIPPED WITH A FRONT GATE', '', 0, 1, 1, 0, 0, 0, '[]'),
(21, '0', '', '0', '0', '', '66,00,000', '', '400SQYD', '', '17.141645', '78.360167', 'property_1737267312.jpeg', '0', '', 1, '2025-01-19 06:15:12', 1, '2025-06-07 09:50:39', 1, 9, 2, 31, 17, 'KACHAROAD', '16KM', '40FT ROAD', 'MAHESHWARAM ROUTE', '', 'NO', '', 'NO', 'NO', 'NO', 'NO', 0, 1, 1, 0, 0, 0, '[]'),
(22, '0', '', '0', '0', '', '80,10,000', '', '534SQYD', '', '17.164023', '78.327881', 'property_1737267614.jpeg', '0', '', 1, '2025-01-19 06:20:13', 1, '2025-06-07 09:55:04', 1, 9, 2, 31, 17, 'KACHA ROAD', '13KM', '40FT ROAD', 'MUCHINTAL ROUTE', '', 'NO', '', 'NO', 'NO', 'NO', 'NO', 0, 1, 1, 0, 0, 0, '[]'),
(23, '0', '', '0', '0', '', '84,40,000', '', '211SQYD', '', '17.216608', '78.459048', 'property_1737268165.jpeg', '0', '', 1, '2025-01-19 06:29:25', 1, '2025-06-07 09:48:27', 1, 9, 2, 31, 17, 'BT ROAD', '14KM', '120FT ROAD', 'TUKKUGUDA-AIRPORT ROUTE', '', 'NO', '', 'NO', 'NO', 'THIS LAND IS ENCLOSED BY A COMPOUND WALL AND ACCESSED THROUGH THE FRONT GATE', 'NO', 0, 1, 1, 0, 0, 0, '[]'),
(24, '0', '', '0', '0', '', '69,00,000', '', '300SQYD', '', '17.174023', '78.384551', 'property_1737268541.jpeg', '0', '', 1, '2025-01-19 06:35:41', 1, '2025-06-07 09:48:02', 1, 9, 2, 31, 17, 'BT ROAD', '10KM', '30FT', 'MANSANPALLY HIGHWAY', '', 'NO', '', 'NO', 'NO', 'NO', 'NO', 0, 1, 1, 0, 0, 0, '[]'),
(25, '0', '', '0', '0', '', '1,80,00,000', '', '400SQYD', '', '17.223899', '78.4626730', 'property_1737268865.jpeg', '0', '', 1, '2025-01-19 06:41:04', 1, '2025-06-07 09:47:50', 1, 9, 2, 31, 17, 'BT ROAD', '15KM', '40FT ROAD', 'TUKKUGUDA ROUTE', '', 'NO', '', 'NO', 'NO', 'NO', 'NO', 0, 1, 1, 0, 0, 0, '[]'),
(26, '0', '', '0', '0', '', '29,00,000', '', '200SQYD', '', '17.159039', '78.391801', 'property_1737349475.jpeg', '0', '', 1, '2025-01-20 05:04:34', 1, '2025-06-07 09:46:50', 1, 9, 2, 31, 17, 'BT ROAD', '12KM', '60FT ROAD', 'BENGALURU-SRISAILAM HIGHWAY', '', 'NO', '', 'NO', 'NO', 'THIS LAND IS SURROUNDED BY A BARBED WIRE FENCE ALONG ITS BOUNDARY', '', 0, 1, 1, 0, 0, 0, '[]'),
(27, '0', '', '0', '0', '', '39,24,000', '', '327SQYD', '', '17.131788', '78.404089', 'property_1737349820.jpeg', '0', '', 1, '2025-01-20 05:10:19', 1, '2025-06-07 09:46:31', 1, 9, 2, 31, 17, 'KACHAROAD', '18KM', '33FT ROAD', 'BENGALURU-SRISAILAM HIGHWAY', 'RED SOIL', 'NO', '', 'NO', 'NO', 'THIS LAND IS SURROUNDED BY A BARBED WIRE FENCE ALONG ITS BOUNDARY', '', 0, 1, 1, 0, 0, 0, '[]'),
(28, '0', '', '0', '0', '', '38,11,500', '', '231SQYD', '', '17.150898', '78.433494', 'property_1737350136.jpeg', '0', '', 1, '2025-01-20 05:15:35', 1, '2025-06-07 09:46:09', 1, 9, 2, 31, 17, 'CC ROAD', '20KM', '30FT ROAD', 'SRISAILAM HIGHWAY', 'RED SOIL', 'NO', '', 'NO', 'NO', 'NO', '', 0, 1, 1, 0, 0, 0, '[]'),
(29, '0', '', '0', '0', '', '83,30,000', '', '238SQYD', '', '17.543234', '78.210559', 'property_1737356957.jpeg', '0', '', 1, '2025-01-20 07:09:17', 1, '2025-06-07 09:42:43', 1, 9, 2, 32, 15, 'CC ROAD', '19KM', '24FT ROAD', 'MUMBAI HIGHWAY', '', 'NO', '', 'NO', 'NO', 'THIS LAND IS ENCLOSED BY PRECAST WALL WITH A FRONT GATE', 'YES', 0, 1, 1, 0, 0, 0, '[]'),
(30, '0', '', '0', '0', '', '99,90,000', '', '1110SQYD', '', '17.617553', '78.117025', 'property_1737357490.jpeg', '0', '', 1, '2025-01-20 07:18:09', 1, '2025-06-07 09:42:08', 1, 9, 2, 32, 16, 'KACHAROAD', '24KM', '20FT ROAD', 'MUMBAI HIGHWAY', 'BLACK SOIL', 'NO', '', 'NO', 'NO', 'THIS LAND IS SURROUNDED BY GALVANIZED IRON(GI) MESH FENCING', '', 0, 1, 1, 0, 0, 0, '[]'),
(31, '0', 'East Facing', '0', '0', '', '1,00,00,00', '', '1200 Sft', '', '', '', 'property_1740071153.jpg', '0', 'https://www.youtube.com/watch?v=SH4fCSgnXcY', 0, '2025-02-20 17:05:53', 1, '2025-06-13 13:04:56', 3, 6, 2, 2, 22, 'Yes', '5 Kms', 'Pakka', 'Near IIM', '', '', '', '', '', '', '', 0, 1, 1, 0, 0, 0, '[]'),
(32, '0', 'sad', '2', '1', 'sada', '0', '2323123', '10', '', '21.969347867365663', '78.88671875', 'property_1749203322.png', '232', '', 0, '2025-06-06 09:48:41', 1, '2025-06-06 10:07:29', 1, 5, 2, 0, 2, 'Repellendus Et pari', 'Molestias labore qui', 'ssd', 'adasd', 'adas', 'das', '', 'asda', 'sasad', 'da', 'sadsa', 0, 7, 2, 0, 0, 7, '[]'),
(33, '0', '', '0', '0', '', '0', '', '4 acers', '', '', '', 'property_1752162615.jpg', '', '', 1, '2025-07-10 15:50:15', 0, '2025-08-21 13:56:15', 5, 2, 2, 0, 12, '', '', 'Bt road', '', 'Black soil', '', '', '', '', '', '', 18, 4, 1, 0, 0, 4, '[{\"title\":\"Hii\",\"description\":\"Hii\"}]'),
(34, '0', '', '0', '0', '', '0', '', '4000', '', '17.549314286479635', '79.27810668945312', 'property_1754808141.jpg', '', '', 0, '2025-08-10 06:42:21', 1, '2025-08-25 14:57:06', 1, 2, 2, 0, 4, '', '', '', '', '', '', '', '', '', '', '', 8, 9, 1, 0, 0, 9, '[]'),
(35, '0', '', '0', '0', '', '0', '', '300', '', '', '', 'property_1754808842.jpg', '', '', 0, '2025-08-10 06:54:02', 1, '2025-08-10 06:54:16', 5, 9, 2, 0, 4, '', '', '', '', '', '', '', '', '', '', '', 8, 1, 1, 0, 0, 1, '[]'),
(36, '0', '', '0', '0', '', '0', '', '2000sft', '', '', '', 'property_1754809759.webp', '', '', 0, '2025-08-10 07:09:18', 1, '2025-08-10 07:09:55', 5, 2, 2, 0, 13, 'available', '2km', 'not available', '', '', '', '', '', '', '', '', 0, 1, 1, 0, 0, 1, '[{\"title\":\"clear title\",\"description\":\"test description\"},{\"title\":\"owner land\",\"description\":\"Test Description\"}]'),
(37, '0', '', '0', '0', '', '0', '', '4 acers ', '', '', '', 'property_1754884541.jpeg', '', '', 0, '2025-08-11 03:55:41', 0, '2025-08-26 02:28:20', 5, 2, 2, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 4, 1, 0, 0, 4, '[{\"title\":\"4 acres\",\"description\":\"Land\"}]'),
(38, '0', '', '0', '0', '', '0', '', '200Sq Yards', '', '17.0996380', '78.28822313151056', 'property_1754892746.jpeg', '', '', 1, '2025-08-11 06:12:26', 0, '2025-08-19 02:33:48', 5, 2, 2, 0, 2, '', '', '', '', '', '', '', '', '', '', '', 5, 1, 1, 0, 0, 1, '[{\"title\":\"Clear Title\",\"description\":\"Clear title\"}]'),
(39, '0', '', '0', '0', '', '2,00,00,000', '2,00,00,000', '1.26', '', '17.0996380', '77.8842790', 'property_1755865679.jpg', '', '', 1, '2025-08-22 12:27:58', 0, '2025-08-22 12:38:22', 3, 2, 2, 0, 17, 'UNDERSTANDING', '15KM', '30FT ROAD', 'MUMBAI HIGHWAY', 'BLACK SOIL', '', '', '', '', '', '', 0, 1, 2, 0, 0, 1, '[{\"title\":\"1.26\",\"description\":\"Land\"}]'),
(40, '0', '', '0', '0', '', '2,00,00,000', '2,00,00,000', '1156sft', '', '17.0996380', '77.8842790', 'property_1756382182.jpg', '', '', 0, '2025-08-28 11:56:21', 1, '2025-08-30 02:52:10', 5, 8, 2, 0, 58, 'BTROAD', '10KM', '30FT ROAD', 'MUMBAI HIGHWAY', 'BLACK SOIL', '', '', '', '', '', '', 0, 1, 1, 0, 0, 1, '[{\"title\":\"1156\",\"description\":\"VILLAS\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `properties_extras`
--

DROP TABLE IF EXISTS `properties_extras`;
CREATE TABLE IF NOT EXISTS `properties_extras` (
  `pe_id` int(11) NOT NULL AUTO_INCREMENT,
  `pe_extra` int(11) NOT NULL,
  `pe_property` int(11) NOT NULL,
  PRIMARY KEY (`pe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `properties_extras`
--

INSERT INTO `properties_extras` (`pe_id`, `pe_extra`, `pe_property`) VALUES
(6, 3, 3),
(49, 1, 8),
(50, 2, 8),
(64, 1, 6),
(65, 2, 6),
(75, 1, 13),
(76, 2, 13),
(79, 1, 7),
(80, 2, 7),
(81, 1, 9),
(82, 2, 9),
(84, 3, 12),
(101, 1, 15),
(102, 2, 15),
(105, 2, 17),
(113, 1, 16),
(114, 2, 16),
(165, 1, 32),
(166, 2, 32),
(167, 3, 32),
(168, 4, 32),
(169, 2, 30),
(170, 1, 29),
(171, 2, 29),
(172, 1, 28),
(173, 2, 28),
(174, 1, 27),
(175, 2, 27),
(176, 1, 26),
(177, 2, 26),
(179, 2, 25),
(180, 2, 24),
(181, 1, 23),
(182, 2, 23),
(187, 1, 21),
(188, 2, 21),
(189, 3, 11),
(190, 1, 14),
(191, 2, 14),
(192, 1, 18),
(193, 2, 18),
(198, 1, 20),
(199, 2, 20),
(200, 1, 22),
(201, 2, 22),
(202, 3, 4),
(203, 3, 31),
(212, 1, 35),
(213, 2, 35),
(214, 3, 35),
(218, 1, 36),
(219, 2, 36),
(220, 3, 36),
(221, 2, 10),
(228, 1, 38),
(229, 2, 38),
(230, 3, 38),
(231, 1, 33),
(232, 1, 5),
(233, 3, 5),
(243, 1, 39),
(248, 1, 19),
(249, 2, 19),
(250, 1, 34),
(251, 2, 34),
(254, 1, 40);

-- --------------------------------------------------------

--
-- Table structure for table `properties_gallery`
--

DROP TABLE IF EXISTS `properties_gallery`;
CREATE TABLE IF NOT EXISTS `properties_gallery` (
  `pg_id` int(11) NOT NULL AUTO_INCREMENT,
  `pg_property` int(11) NOT NULL,
  `pg_name` varchar(255) NOT NULL,
  PRIMARY KEY (`pg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `properties_gallery`
--

INSERT INTO `properties_gallery` (`pg_id`, `pg_property`, `pg_name`) VALUES
(1, 3, '821sGbyn6hTJ.png'),
(2, 8, 'JZ7_Oiwgx9b5.jpg'),
(3, 8, 'I3PkoG9XxJRS.jpg'),
(4, 8, 'LeRKqAiHgDtB.jpg'),
(5, 11, 'zHUEmSiA4lDR.jpg'),
(6, 11, 'TaRImvcnVyxW.jpg'),
(7, 11, 'H7gW0IKvJSly.jpg'),
(8, 4, 'PUE9sk8eSxcz.jpg'),
(9, 4, '9uMnpfmAOJ5W.jpg'),
(10, 4, '2VnMt14Nvk0R.jpg'),
(11, 4, '8WzZCDhyKd3F.jpg'),
(12, 4, 'BHmSbLlJaA1c.jpg'),
(13, 4, 'N7Xp5lYIfK3C.jpg'),
(14, 5, 'ASbNamPGgfKl.jpg'),
(15, 5, 'RbYJFzymt7cP.jpg'),
(16, 5, 'hKQzY3wCT0Dv.jpg'),
(17, 5, '6pYO8aPd5u_v.jpg'),
(18, 5, 'DWrk83FEUg0_.jpg'),
(19, 5, 'edsiHJkWh4oK.jpg'),
(20, 5, '0GKSnTmBMsx6.jpg'),
(21, 5, 'tI5bXfiaxkQh.jpg'),
(22, 5, 's3UCeN0Wdru2.jpg'),
(23, 6, 'RTpj1PhEDqw8.jpg'),
(24, 6, 'EhcUw736K4XC.jpg'),
(25, 6, 'tNTvmHI0Z6uf.jpg'),
(26, 6, 'Hb5sPG0ANdye.jpg'),
(27, 7, 'KSXYdgm03LaU.jpg'),
(28, 7, 'omkLnPyNbaVe.jpg'),
(29, 7, 'VHCJE6eScFNz.jpg'),
(30, 7, 'KmJD5u2N1zc3.jpg'),
(31, 7, 'LvOUcHYg7rPB.jpg'),
(32, 9, 'zdFuliS8VREy.jpg'),
(33, 9, 'FkQhUDE4971n.jpg'),
(34, 9, 'DZAYotvOmrdu.jpg'),
(35, 9, '5VIvRnms4aAj.jpg'),
(36, 9, 'jqz8irXcSs0U.jpg'),
(37, 9, 'x19WLG6fjikb.jpg'),
(38, 9, 'yMDgrSmhuelF.jpg'),
(39, 9, 'o0ekw_K5PvDN.jpg'),
(40, 9, 'BFnsvDIjTpLS.jpg'),
(41, 10, 'rA8pQqI1obYL.jpg'),
(42, 10, 'gk6IR8Zj2lwe.jpg'),
(43, 10, 'oGaZeJRgq0ml.jpg'),
(44, 15, '317s8q9_jeGI.jpeg'),
(45, 15, '95VndXMzwaN0.jpeg'),
(46, 15, '8tDlAFIye_0z.jpeg'),
(47, 15, 'gaGN92QysM6K.jpeg'),
(48, 15, 'FMaoO6bTvKw2.jpeg'),
(49, 15, 'Mpske25OfwFP.jpeg'),
(50, 16, 'RTefFvtBiIys.jpeg'),
(51, 16, '5kM9DZdYCLBz.jpeg'),
(52, 16, 'g8SOhi9rIV_l.jpeg'),
(53, 16, 'SFK1QxhvLyWz.jpeg'),
(54, 18, 'xjrpvem2ZCNY.jpeg'),
(55, 18, 'zUYTvQKrp6kc.jpeg'),
(56, 18, 'R_1x2sotV9J5.jpeg'),
(57, 18, 'R7e_aGf8mINq.jpeg'),
(58, 18, 'kXcIqmfQnl9z.jpeg'),
(59, 19, 'K1dOrbYPFv0S.jpeg'),
(60, 19, 'FjKaH857bgMP.jpeg'),
(61, 20, '9Py0NqDalc_8.jpeg'),
(62, 20, 'DpVHLgecQUjM.jpeg'),
(63, 20, 'V3rH6xQMlnTF.jpeg'),
(64, 20, 'Zas3xp4A2Diz.jpeg'),
(65, 20, 'SRpth3iP0OIM.jpeg'),
(66, 20, 'mT6pJI7wrucZ.jpeg'),
(67, 21, 'wQWIqdTFjhKY.jpeg'),
(68, 21, 'sliVoQETkZw3.jpeg'),
(69, 21, '4ig_k6TlLERq.jpeg'),
(70, 22, 'rzWTR80hGgV9.jpeg'),
(71, 22, 'Ht0w7MrKh562.jpeg'),
(72, 22, 'wGB0SYZ3xuJ9.jpeg'),
(73, 23, 'bFd9jy6X1QYO.jpeg'),
(74, 23, 'r8AuGO31qmh2.jpeg'),
(75, 23, 'j2dnT_kgYD7K.jpeg'),
(76, 23, 'Ueu8oMPH4rqL.jpeg'),
(77, 24, 'CjXbzNnqgxcT.jpeg'),
(78, 24, 'sRpf9S8lbwN7.jpeg'),
(79, 24, 'AL9MXmujlgof.jpeg'),
(80, 25, '3R4fwuiAaQhg.jpeg'),
(81, 25, '9ZEfkjiFPI1V.jpeg'),
(82, 25, 'bkdNTwJqGvy1.jpeg'),
(83, 25, '_Xw4MZbsgUeQ.jpeg'),
(84, 26, 's4pQhAIoZxea.jpeg'),
(85, 26, 'oZiz8mcwejt0.jpeg'),
(86, 26, 'RNS6BpZDVntH.jpeg'),
(87, 26, 'N037Ae4D5_UK.jpeg'),
(88, 27, 'fn_P0LkY24Ji.jpeg'),
(89, 27, 'zPRaxefgnvpO.jpeg'),
(90, 27, 'T3_waZQNCe9u.jpeg'),
(91, 27, 'sYxTEjMJAVG3.jpeg'),
(92, 28, 'DyNF7hbYQjJG.jpeg'),
(93, 28, '1nkMqs8rRZWY.jpeg'),
(94, 28, '7EILxKlvpa2A.jpeg'),
(95, 29, 'rfi2cmyDsHGC.jpeg'),
(96, 29, 'oXmPt_OJKD5e.jpeg'),
(97, 29, 'NKCgR0cLjbES.jpeg'),
(98, 29, 'XgEAdZqK52Q4.jpeg'),
(99, 30, 'blm6kg4AvUuB.jpeg'),
(100, 30, 'nCKgfJEPvoZV.jpeg'),
(101, 30, 'gz3mWqvZ4_5I.jpeg'),
(102, 30, 'qhB_kP7Eg68Q.jpeg'),
(103, 30, 'Mgm0wCQtbyiv.jpeg'),
(104, 31, 'qZkPj_WCQSmf.jpg'),
(105, 31, 'xwUT_QZberJ8.jpg'),
(106, 31, 'Joeqr7Vhf0cW.jpg'),
(107, 34, 'zoKy32ZHVGmR.jpg'),
(108, 39, 'CfKcuMXb24RQ.jpg'),
(109, 40, 'kFbpnW7AXRv9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `property_lead`
--

DROP TABLE IF EXISTS `property_lead`;
CREATE TABLE IF NOT EXISTS `property_lead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `property_id` varchar(30) DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `ref` text NOT NULL,
  `url` text NOT NULL,
  `property_lead` varchar(20) DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `property_lead`
--

INSERT INTO `property_lead` (`id`, `user_id`, `property_id`, `name`, `email`, `phone`, `message`, `ref`, `url`, `property_lead`, `status`, `agent_id`, `type`, `date_added`) VALUES
(1, 0, NULL, 'Ali Raza', 'asifahmed715@gmail.com', '01111111111', 'asdasda', '', '', NULL, '', 0, '', '2024-09-26 17:24:41'),
(2, 0, NULL, 'Asif Ahmed', 'asifahmed715@gmail.com', '03139188022', 'asdasa', '', '', NULL, '', 0, '', '2024-09-26 17:29:29'),
(3, 0, NULL, 'Ali Raza', 'asifahmed715@gmail.com', '01111111111', 'asada', '', 'packers-movers', NULL, '', 0, 'packers-movers', '2024-09-26 17:30:53'),
(4, 0, NULL, 'kashan khan', 'kashankhan@gmail.com', '342343242432', 'asdadada', '', 'property-valuation', NULL, '', 0, 'property-valuation', '2024-10-14 19:43:47'),
(5, 0, NULL, 'kashan khan', 'kashankhan@gmail.com', '342343242432', 'asdadada', '', 'property-valuation', NULL, '', 0, 'property-valuation', '2024-10-14 19:48:08'),
(6, 0, NULL, 'kashan khan', 'kashankhan@gmail.com', '342343242432', 'asdadada', '', 'property-valuation', NULL, '', 0, 'property-valuation', '2024-10-14 19:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `pt_cities`
--

DROP TABLE IF EXISTS `pt_cities`;
CREATE TABLE IF NOT EXISTS `pt_cities` (
  `pt_city_id` int(11) NOT NULL AUTO_INCREMENT,
  `pt_city_featured` tinyint(1) NOT NULL DEFAULT 0,
  `pt_city_image` varchar(255) NOT NULL,
  PRIMARY KEY (`pt_city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `pt_cities`
--

INSERT INTO `pt_cities` (`pt_city_id`, `pt_city_featured`, `pt_city_image`) VALUES
(2, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `pt_conditions`
--

DROP TABLE IF EXISTS `pt_conditions`;
CREATE TABLE IF NOT EXISTS `pt_conditions` (
  `pt_conditions_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pt_conditions_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pt_conditions`
--

INSERT INTO `pt_conditions` (`pt_conditions_id`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `pt_extras`
--

DROP TABLE IF EXISTS `pt_extras`;
CREATE TABLE IF NOT EXISTS `pt_extras` (
  `pt_extra_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pt_extra_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `pt_extras`
--

INSERT INTO `pt_extras` (`pt_extra_id`) VALUES
(1),
(2),
(3),
(4);

-- --------------------------------------------------------

--
-- Table structure for table `pt_mandal`
--

DROP TABLE IF EXISTS `pt_mandal`;
CREATE TABLE IF NOT EXISTS `pt_mandal` (
  `pt_mandal_id` int(11) NOT NULL AUTO_INCREMENT,
  `pt_mandal_featured` tinyint(1) NOT NULL DEFAULT 0,
  `pt_mandal_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pt_mandal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `pt_mandal`
--

INSERT INTO `pt_mandal` (`pt_mandal_id`, `pt_mandal_featured`, `pt_mandal_image`) VALUES
(1, 1, 'mandal_1729718012.png'),
(2, 0, ''),
(3, 0, ''),
(4, 0, ''),
(5, 0, ''),
(6, 0, ''),
(8, 0, NULL),
(9, 0, NULL),
(10, 0, NULL),
(11, 0, NULL),
(12, 0, NULL),
(13, 0, NULL),
(14, 0, NULL),
(15, 0, NULL),
(16, 0, NULL),
(17, 0, NULL),
(18, 0, NULL),
(19, 0, NULL),
(20, 0, NULL),
(21, 0, NULL),
(22, 0, NULL),
(23, 0, NULL),
(24, 0, NULL),
(25, 0, NULL),
(26, 0, NULL),
(27, 0, NULL),
(28, 0, NULL),
(29, 0, NULL),
(30, 0, NULL),
(31, 0, NULL),
(32, 0, NULL),
(33, 0, NULL),
(34, 0, NULL),
(35, 0, NULL),
(36, 0, NULL),
(37, 0, NULL),
(38, 0, NULL),
(39, 0, NULL),
(40, 0, NULL),
(41, 0, NULL),
(42, 0, NULL),
(43, 0, NULL),
(44, 0, NULL),
(45, 0, NULL),
(46, 0, NULL),
(47, 0, NULL),
(48, 0, NULL),
(49, 0, NULL),
(50, 0, NULL),
(51, 0, NULL),
(52, 0, NULL),
(53, 0, NULL),
(54, 0, NULL),
(55, 0, NULL),
(56, 0, NULL),
(57, 0, NULL),
(58, 0, NULL),
(59, 0, ''),
(60, 0, NULL),
(61, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pt_status`
--

DROP TABLE IF EXISTS `pt_status`;
CREATE TABLE IF NOT EXISTS `pt_status` (
  `pt_status_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pt_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `pt_status`
--

INSERT INTO `pt_status` (`pt_status_id`) VALUES
(1),
(2),
(3),
(4),
(5);

-- --------------------------------------------------------

--
-- Table structure for table `pt_types`
--

DROP TABLE IF EXISTS `pt_types`;
CREATE TABLE IF NOT EXISTS `pt_types` (
  `pt_type_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pt_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `pt_types`
--

INSERT INTO `pt_types` (`pt_type_id`) VALUES
(2),
(5),
(6),
(7),
(8),
(9);

-- --------------------------------------------------------

--
-- Table structure for table `pt_types_pro`
--

DROP TABLE IF EXISTS `pt_types_pro`;
CREATE TABLE IF NOT EXISTS `pt_types_pro` (
  `pt_type_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pt_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `pt_types_pro`
--

INSERT INTO `pt_types_pro` (`pt_type_id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `pt_village`
--

DROP TABLE IF EXISTS `pt_village`;
CREATE TABLE IF NOT EXISTS `pt_village` (
  `pt_village_id` int(11) NOT NULL AUTO_INCREMENT,
  `pt_village_mandal` int(11) NOT NULL,
  PRIMARY KEY (`pt_village_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `pt_village`
--

INSERT INTO `pt_village` (`pt_village_id`, `pt_village_mandal`) VALUES
(2, 0),
(4, 0),
(5, 2),
(6, 3),
(7, 3),
(8, 4),
(13, 0),
(14, 9),
(15, 10),
(16, 11),
(17, 11),
(18, 12);

-- --------------------------------------------------------

--
-- Table structure for table `pt_zones`
--

DROP TABLE IF EXISTS `pt_zones`;
CREATE TABLE IF NOT EXISTS `pt_zones` (
  `pt_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `pt_zone_city` int(11) NOT NULL,
  PRIMARY KEY (`pt_zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `pt_zones`
--

INSERT INTO `pt_zones` (`pt_zone_id`, `pt_zone_city`) VALUES
(2, 2),
(3, 2),
(4, 2),
(5, 3),
(6, 4),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(2, 'Agent'),
(3, 'Subscriber');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `st_language` varchar(50) NOT NULL,
  `st_unit` varchar(10) NOT NULL DEFAULT 'M²',
  `st_currency` varchar(50) NOT NULL DEFAULT '$',
  `st_dateformat` varchar(20) NOT NULL DEFAULT 'd/m/Y',
  `st_currencyposition` varchar(20) NOT NULL DEFAULT 'left',
  `st_decimalseparator` varchar(2) NOT NULL DEFAULT '.',
  `st_facebook` varchar(255) DEFAULT NULL,
  `st_twitter` varchar(255) DEFAULT NULL,
  `st_youtube` varchar(255) DEFAULT NULL,
  `st_instagram` varchar(255) DEFAULT NULL,
  `st_linkedin` varchar(255) DEFAULT NULL,
  `st_whatsapp` varchar(255) DEFAULT NULL,
  `st_email` varchar(100) NOT NULL,
  `st_phone` varchar(50) NOT NULL,
  `st_officeaddress` varchar(100) NOT NULL,
  `st_featuredproperties` int(11) NOT NULL DEFAULT 1,
  `st_recentproperties` int(11) NOT NULL DEFAULT 1,
  `st_offersproperties` int(11) NOT NULL DEFAULT 1,
  `st_featuredposts` int(11) NOT NULL DEFAULT 1,
  `st_featuredcities` int(11) NOT NULL DEFAULT 1,
  `st_similarproperties` int(11) NOT NULL DEFAULT 1,
  `st_searchlimit` int(11) NOT NULL DEFAULT 1,
  `st_propertieslimit` int(11) NOT NULL DEFAULT 1,
  `st_bloglimit` int(11) NOT NULL DEFAULT 1,
  `st_defaultsearchpage` int(11) NOT NULL,
  `st_defaultpropertiespage` int(11) NOT NULL,
  `st_defaultblogpage` int(11) NOT NULL,
  `st_defaultprivacypage` int(11) NOT NULL,
  `st_defaultcontactpage` int(11) NOT NULL,
  `st_defaulttermspage` int(11) NOT NULL,
  `st_maintenance` tinyint(1) NOT NULL DEFAULT 0,
  `st_calculator` tinyint(1) NOT NULL DEFAULT 1,
  `st_analytics` text NOT NULL,
  `st_recipientemail` varchar(100) NOT NULL,
  `st_smtphost` varchar(50) NOT NULL,
  `st_smtpemail` varchar(100) NOT NULL,
  `st_smtppassword` varchar(50) NOT NULL,
  `st_smtpencrypt` varchar(50) NOT NULL,
  `st_smtpport` varchar(50) NOT NULL,
  `st_recaptchakey` varchar(150) NOT NULL,
  `st_recaptchasecretkey` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`st_language`, `st_unit`, `st_currency`, `st_dateformat`, `st_currencyposition`, `st_decimalseparator`, `st_facebook`, `st_twitter`, `st_youtube`, `st_instagram`, `st_linkedin`, `st_whatsapp`, `st_email`, `st_phone`, `st_officeaddress`, `st_featuredproperties`, `st_recentproperties`, `st_offersproperties`, `st_featuredposts`, `st_featuredcities`, `st_similarproperties`, `st_searchlimit`, `st_propertieslimit`, `st_bloglimit`, `st_defaultsearchpage`, `st_defaultpropertiespage`, `st_defaultblogpage`, `st_defaultprivacypage`, `st_defaultcontactpage`, `st_defaulttermspage`, `st_maintenance`, `st_calculator`, `st_analytics`, `st_recipientemail`, `st_smtphost`, `st_smtpemail`, `st_smtppassword`, `st_smtpencrypt`, `st_smtpport`, `st_recaptchakey`, `st_recaptchasecretkey`) VALUES
('en', '', '₹', 'd/m/Y', 'left-space', '.', 'https://www.facebook.com/', 'https://twitter.com/home', 'https://www.youtube.com/', '', 'https://www.linkedin.com/', '', 'agency@email.com', '+123 456 798', 'Street 1, Australia', 6, 6, 6, 3, 5, 6, 8, 8, 8, 3, 2, 5, 6, 4, 7, 0, 0, '', 'asifahmed715@gmail.com', 'smtp.gmail.com', 'support@a1lands.com', 'lcsfuyipbbwugbbl', 'tls', '587', '6LfVnFcrAAAAAJrNthaLFhd2rv3VGidFP7HRt2LA', '6LfVnFcrAAAAAG8MidLtZMAdapgfRxLfswoIUxMl');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_visibility` tinyint(2) NOT NULL DEFAULT 1,
  `slider_image` varchar(255) NOT NULL,
  `slider_property` int(11) NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`slider_id`, `slider_visibility`, `slider_image`, `slider_property`) VALUES
(1, 1, 'slider_1729928222.jpg', 0),
(2, 1, 'slider_1729928200.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

DROP TABLE IF EXISTS `staffs`;
CREATE TABLE IF NOT EXISTS `staffs` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_status` int(11) NOT NULL,
  `staff_facebook` varchar(255) NOT NULL,
  `staff_twitter` varchar(255) NOT NULL,
  `staff_linkedin` varchar(255) NOT NULL,
  `staff_google` varchar(255) NOT NULL,
  `staff_image` varchar(255) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
CREATE TABLE IF NOT EXISTS `subscribers` (
  `subscriber_id` int(11) NOT NULL AUTO_INCREMENT,
  `subscriber_email` varchar(255) NOT NULL,
  `subscriber_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`subscriber_id`),
  UNIQUE KEY `subscriber_email` (`subscriber_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `testimonial_id` int(11) NOT NULL AUTO_INCREMENT,
  `testimonial_name` varchar(255) NOT NULL,
  `testimonial_description` text NOT NULL,
  `testimonial_image` varchar(255) NOT NULL,
  `testimonial_job` varchar(255) NOT NULL,
  `testimonial_status` tinyint(1) NOT NULL DEFAULT 1,
  `testimonial_lang` varchar(50) NOT NULL,
  PRIMARY KEY (`testimonial_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
CREATE TABLE IF NOT EXISTS `theme` (
  `th_headerstyle` varchar(50) NOT NULL,
  `th_homestyle` varchar(50) NOT NULL,
  `th_logo` varchar(255) NOT NULL,
  `th_favicon` varchar(255) NOT NULL,
  `th_homebg` varchar(255) NOT NULL,
  `th_testimonial` varchar(255) NOT NULL,
  `th_primarycolor` varchar(50) NOT NULL DEFAULT '#f26522',
  `th_secondarycolor` varchar(50) NOT NULL DEFAULT '#0d215a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`th_headerstyle`, `th_homestyle`, `th_logo`, `th_favicon`, `th_homebg`, `th_testimonial`, `th_primarycolor`, `th_secondarycolor`) VALUES
('header1', 'home1', 'logo.png', 'favicon.png', 'homebg.jpg', 'testimonial_bg.jpg', '#bf7c2f', '#0d215a');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
CREATE TABLE IF NOT EXISTS `tokens` (
  `token_email` varchar(250) NOT NULL,
  `token_key` varchar(250) NOT NULL,
  `token_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`token_email`, `token_key`, `token_date`) VALUES
('vara@gmail.com', '9fa30b702f5dfa48f72ea161e094cfac09b40372cf371d14f88f8514427742cc089573d886356a8256ff1039da30b9178b874f1e439225492c97c674c40fa65ee50de06f67', '2025-08-25 06:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `translate_ar`
--

DROP TABLE IF EXISTS `translate_ar`;
CREATE TABLE IF NOT EXISTS `translate_ar` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_maintenancepage` varchar(100) NOT NULL,
  `tr_maintenancetitle` varchar(100) NOT NULL,
  `tr_maintenancesub` text NOT NULL,
  `tr_profilepage` varchar(50) NOT NULL,
  `tr_signinpage` varchar(50) NOT NULL,
  `tr_signuppage` varchar(50) NOT NULL,
  `tr_resetpage` varchar(50) NOT NULL,
  `tr_forgotpage` varchar(50) NOT NULL,
  `tr_termsandconds` text NOT NULL,
  `tr_aboutus` text NOT NULL,
  `tr_eptitle` varchar(100) NOT NULL,
  `tr_epsubtitle` varchar(100) NOT NULL,
  `tr_eptagline` varchar(150) NOT NULL,
  `tr_epbutton` varchar(50) NOT NULL,
  `tr_1` varchar(100) NOT NULL,
  `tr_2` varchar(100) NOT NULL,
  `tr_3` varchar(100) NOT NULL,
  `tr_4` varchar(100) NOT NULL,
  `tr_5` varchar(100) NOT NULL,
  `tr_6` varchar(100) NOT NULL,
  `tr_7` varchar(100) NOT NULL,
  `tr_8` varchar(100) NOT NULL,
  `tr_9` varchar(100) NOT NULL,
  `tr_10` varchar(100) NOT NULL,
  `tr_11` varchar(100) NOT NULL,
  `tr_12` varchar(100) NOT NULL,
  `tr_13` varchar(100) NOT NULL,
  `tr_14` varchar(100) NOT NULL,
  `tr_15` varchar(100) NOT NULL,
  `tr_16` varchar(100) NOT NULL,
  `tr_17` varchar(100) NOT NULL,
  `tr_18` varchar(100) NOT NULL,
  `tr_19` varchar(100) NOT NULL,
  `tr_20` varchar(100) NOT NULL,
  `tr_21` varchar(100) NOT NULL,
  `tr_22` varchar(100) NOT NULL,
  `tr_23` varchar(100) NOT NULL,
  `tr_24` varchar(100) NOT NULL,
  `tr_25` varchar(100) NOT NULL,
  `tr_26` varchar(100) NOT NULL,
  `tr_27` varchar(100) NOT NULL,
  `tr_28` varchar(100) NOT NULL,
  `tr_29` varchar(100) NOT NULL,
  `tr_30` varchar(100) NOT NULL,
  `tr_31` varchar(255) NOT NULL,
  `tr_32` varchar(255) NOT NULL,
  `tr_33` varchar(100) NOT NULL,
  `tr_34` varchar(100) NOT NULL,
  `tr_35` varchar(100) NOT NULL,
  `tr_36` varchar(100) NOT NULL,
  `tr_37` varchar(100) NOT NULL,
  `tr_38` varchar(100) NOT NULL,
  `tr_39` varchar(100) NOT NULL,
  `tr_40` varchar(100) NOT NULL DEFAULT '-',
  `tr_41` varchar(100) NOT NULL DEFAULT '-',
  `tr_42` varchar(100) NOT NULL DEFAULT '-',
  `tr_43` varchar(100) NOT NULL DEFAULT '-',
  `tr_44` varchar(100) NOT NULL DEFAULT '-',
  `tr_45` varchar(100) NOT NULL DEFAULT '-',
  `tr_46` varchar(100) NOT NULL DEFAULT '-',
  `tr_47` varchar(100) NOT NULL DEFAULT '-',
  `tr_48` varchar(100) NOT NULL DEFAULT '-',
  `tr_49` varchar(100) NOT NULL DEFAULT '-',
  `tr_50` varchar(100) NOT NULL DEFAULT '-',
  `tr_51` varchar(100) NOT NULL DEFAULT '-',
  `tr_52` varchar(100) NOT NULL DEFAULT '-',
  `tr_53` varchar(100) NOT NULL DEFAULT '-',
  `tr_54` varchar(100) NOT NULL DEFAULT '-',
  `tr_55` varchar(100) NOT NULL DEFAULT '-',
  `tr_56` varchar(100) NOT NULL DEFAULT '-',
  `tr_57` varchar(100) NOT NULL DEFAULT '-',
  `tr_58` varchar(100) NOT NULL DEFAULT '-',
  `tr_59` varchar(100) NOT NULL DEFAULT '-',
  `tr_60` varchar(100) NOT NULL DEFAULT '-',
  `tr_61` varchar(100) NOT NULL DEFAULT '-',
  `tr_62` varchar(100) NOT NULL DEFAULT '-',
  `tr_63` varchar(100) NOT NULL DEFAULT '-',
  `tr_64` varchar(100) NOT NULL DEFAULT '-',
  `tr_65` varchar(100) NOT NULL DEFAULT '-',
  `tr_66` varchar(100) NOT NULL DEFAULT '-',
  `tr_67` varchar(100) NOT NULL DEFAULT '-',
  `tr_68` varchar(100) NOT NULL DEFAULT '-',
  `tr_69` varchar(100) NOT NULL DEFAULT '-',
  `tr_70` varchar(100) NOT NULL DEFAULT '-',
  `tr_71` varchar(100) NOT NULL DEFAULT '-',
  `tr_72` varchar(100) NOT NULL DEFAULT '-',
  `tr_73` varchar(100) NOT NULL DEFAULT '-',
  `tr_74` varchar(100) NOT NULL DEFAULT '-',
  `tr_75` varchar(100) NOT NULL DEFAULT '-',
  `tr_76` varchar(100) NOT NULL DEFAULT '-',
  `tr_77` varchar(100) NOT NULL DEFAULT '-',
  `tr_78` varchar(100) NOT NULL DEFAULT '-',
  `tr_79` varchar(100) NOT NULL DEFAULT '-',
  `tr_80` varchar(100) NOT NULL DEFAULT '-',
  `tr_81` varchar(100) NOT NULL DEFAULT '-',
  `tr_82` varchar(100) NOT NULL DEFAULT '-',
  `tr_83` varchar(100) NOT NULL DEFAULT '-',
  `tr_84` varchar(100) NOT NULL DEFAULT '-',
  `tr_85` varchar(100) NOT NULL DEFAULT '-',
  `tr_86` varchar(100) NOT NULL DEFAULT '-',
  `tr_87` varchar(100) NOT NULL DEFAULT '-',
  `tr_88` varchar(100) NOT NULL DEFAULT '-',
  `tr_89` varchar(100) NOT NULL DEFAULT '-',
  `tr_90` varchar(100) NOT NULL DEFAULT '-',
  `tr_91` varchar(100) NOT NULL DEFAULT '-',
  `tr_92` varchar(100) NOT NULL DEFAULT '-',
  `tr_93` varchar(100) NOT NULL DEFAULT '-',
  `tr_94` varchar(100) NOT NULL DEFAULT '-',
  `tr_95` varchar(100) NOT NULL DEFAULT '-',
  `tr_96` varchar(100) NOT NULL DEFAULT '-',
  `tr_97` varchar(100) NOT NULL DEFAULT '-',
  `tr_98` varchar(100) NOT NULL DEFAULT '-',
  `tr_99` varchar(100) NOT NULL DEFAULT '-',
  `tr_100` varchar(100) NOT NULL DEFAULT '-',
  `tr_101` varchar(50) NOT NULL DEFAULT '-',
  `tr_102` varchar(50) NOT NULL DEFAULT '-',
  `tr_103` varchar(50) NOT NULL DEFAULT '-',
  `tr_104` varchar(50) NOT NULL DEFAULT '-',
  `tr_105` varchar(50) NOT NULL DEFAULT '-',
  `tr_106` varchar(50) NOT NULL DEFAULT '-',
  `tr_107` varchar(50) NOT NULL DEFAULT '-',
  `tr_108` varchar(50) NOT NULL DEFAULT '-',
  `tr_109` varchar(50) NOT NULL DEFAULT '-',
  `tr_110` varchar(50) NOT NULL DEFAULT '-',
  `tr_111` varchar(50) NOT NULL DEFAULT '-',
  `tr_112` varchar(50) NOT NULL DEFAULT '-',
  `tr_113` varchar(50) NOT NULL DEFAULT '-',
  `tr_114` varchar(50) NOT NULL DEFAULT '-',
  `tr_115` varchar(50) NOT NULL DEFAULT '-',
  `tr_116` varchar(50) NOT NULL DEFAULT '-',
  `tr_117` varchar(50) NOT NULL DEFAULT '-',
  `tr_118` varchar(50) NOT NULL DEFAULT '-',
  `tr_119` varchar(50) NOT NULL DEFAULT '-',
  `tr_120` varchar(50) NOT NULL DEFAULT '-',
  `tr_121` varchar(50) NOT NULL DEFAULT '-',
  `tr_122` varchar(50) NOT NULL DEFAULT '-',
  `tr_123` varchar(50) NOT NULL DEFAULT '-',
  `tr_124` varchar(50) NOT NULL DEFAULT '-',
  `tr_125` varchar(50) NOT NULL DEFAULT '-',
  `tr_126` varchar(50) NOT NULL DEFAULT '-',
  `tr_127` varchar(50) NOT NULL DEFAULT '-',
  `tr_128` varchar(50) NOT NULL DEFAULT '-',
  `tr_129` varchar(50) NOT NULL DEFAULT '-',
  `tr_130` varchar(50) NOT NULL DEFAULT '-',
  `tr_131` varchar(50) NOT NULL DEFAULT '-',
  `tr_132` varchar(50) NOT NULL DEFAULT '-',
  `tr_133` varchar(50) NOT NULL DEFAULT '-',
  `tr_134` varchar(50) NOT NULL DEFAULT '-',
  `tr_135` varchar(50) NOT NULL DEFAULT '-',
  `tr_136` varchar(50) NOT NULL DEFAULT '-',
  `tr_137` varchar(50) NOT NULL DEFAULT '-',
  `tr_138` varchar(50) NOT NULL DEFAULT '-',
  `tr_139` varchar(50) NOT NULL DEFAULT '-',
  `tr_140` varchar(50) NOT NULL DEFAULT '-',
  `tr_141` varchar(50) NOT NULL DEFAULT '-',
  `tr_142` varchar(50) NOT NULL DEFAULT '-',
  `tr_143` varchar(50) NOT NULL DEFAULT '-',
  `tr_144` varchar(50) NOT NULL DEFAULT '-',
  `tr_145` varchar(50) NOT NULL DEFAULT '-',
  `tr_146` varchar(50) NOT NULL DEFAULT '-',
  `tr_147` varchar(50) NOT NULL DEFAULT '-',
  `tr_148` varchar(50) NOT NULL DEFAULT '-',
  `tr_149` varchar(50) NOT NULL DEFAULT '-',
  `tr_150` varchar(50) NOT NULL DEFAULT '-',
  `tr_151` varchar(50) NOT NULL DEFAULT '-',
  `tr_152` varchar(50) NOT NULL DEFAULT '-',
  `tr_153` varchar(50) NOT NULL DEFAULT '-',
  `tr_154` varchar(50) NOT NULL DEFAULT '-',
  `tr_155` varchar(50) NOT NULL DEFAULT '-',
  `tr_156` varchar(50) NOT NULL DEFAULT '-',
  `tr_157` varchar(50) NOT NULL DEFAULT '-',
  `tr_158` varchar(50) NOT NULL DEFAULT '-',
  `tr_159` varchar(50) NOT NULL DEFAULT '-',
  `tr_160` varchar(50) NOT NULL DEFAULT '-',
  `tr_161` varchar(50) NOT NULL DEFAULT '-',
  `tr_162` varchar(50) NOT NULL DEFAULT '-',
  `tr_163` varchar(50) NOT NULL DEFAULT '-',
  `tr_164` varchar(50) NOT NULL DEFAULT '-',
  `tr_165` varchar(50) NOT NULL DEFAULT '-',
  `tr_166` varchar(50) NOT NULL DEFAULT '-',
  `tr_167` varchar(50) NOT NULL DEFAULT '-',
  `tr_168` varchar(50) NOT NULL DEFAULT '-',
  `tr_169` varchar(50) NOT NULL DEFAULT '-',
  `tr_170` varchar(50) NOT NULL DEFAULT '-',
  `tr_171` varchar(50) NOT NULL DEFAULT '-',
  `tr_172` varchar(50) NOT NULL DEFAULT '-',
  `tr_173` varchar(50) NOT NULL DEFAULT '-',
  `tr_174` varchar(50) NOT NULL DEFAULT '-',
  `tr_175` varchar(50) NOT NULL DEFAULT '-',
  `tr_176` varchar(50) NOT NULL DEFAULT '-',
  `tr_177` varchar(50) NOT NULL DEFAULT '-',
  `tr_178` varchar(50) NOT NULL DEFAULT '-',
  `tr_179` varchar(50) NOT NULL DEFAULT '-',
  `tr_180` varchar(50) NOT NULL DEFAULT '-',
  `tr_181` varchar(50) NOT NULL DEFAULT '-',
  `tr_182` varchar(50) NOT NULL DEFAULT '-',
  `tr_183` varchar(50) NOT NULL DEFAULT '-',
  `tr_184` varchar(50) NOT NULL DEFAULT '-',
  `tr_185` varchar(50) NOT NULL DEFAULT '-',
  `tr_186` varchar(50) NOT NULL DEFAULT '-',
  `tr_187` varchar(50) NOT NULL DEFAULT '-',
  `tr_188` varchar(50) NOT NULL DEFAULT '-',
  `tr_189` varchar(50) NOT NULL DEFAULT '-',
  `tr_190` varchar(50) NOT NULL DEFAULT '-',
  `tr_191` varchar(50) NOT NULL DEFAULT '-',
  `tr_192` varchar(50) NOT NULL DEFAULT '-',
  `tr_193` varchar(50) NOT NULL DEFAULT '-',
  `tr_194` varchar(50) NOT NULL DEFAULT '-',
  `tr_195` varchar(50) NOT NULL DEFAULT '-',
  `tr_196` varchar(50) NOT NULL DEFAULT '-',
  `tr_197` varchar(50) NOT NULL DEFAULT '-',
  `tr_198` varchar(50) NOT NULL DEFAULT '-',
  `tr_199` varchar(50) NOT NULL DEFAULT '-',
  `tr_200` varchar(50) NOT NULL DEFAULT '-',
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `translate_ar`
--

INSERT INTO `translate_ar` (`tr_id`, `tr_maintenancepage`, `tr_maintenancetitle`, `tr_maintenancesub`, `tr_profilepage`, `tr_signinpage`, `tr_signuppage`, `tr_resetpage`, `tr_forgotpage`, `tr_termsandconds`, `tr_aboutus`, `tr_eptitle`, `tr_epsubtitle`, `tr_eptagline`, `tr_epbutton`, `tr_1`, `tr_2`, `tr_3`, `tr_4`, `tr_5`, `tr_6`, `tr_7`, `tr_8`, `tr_9`, `tr_10`, `tr_11`, `tr_12`, `tr_13`, `tr_14`, `tr_15`, `tr_16`, `tr_17`, `tr_18`, `tr_19`, `tr_20`, `tr_21`, `tr_22`, `tr_23`, `tr_24`, `tr_25`, `tr_26`, `tr_27`, `tr_28`, `tr_29`, `tr_30`, `tr_31`, `tr_32`, `tr_33`, `tr_34`, `tr_35`, `tr_36`, `tr_37`, `tr_38`, `tr_39`, `tr_40`, `tr_41`, `tr_42`, `tr_43`, `tr_44`, `tr_45`, `tr_46`, `tr_47`, `tr_48`, `tr_49`, `tr_50`, `tr_51`, `tr_52`, `tr_53`, `tr_54`, `tr_55`, `tr_56`, `tr_57`, `tr_58`, `tr_59`, `tr_60`, `tr_61`, `tr_62`, `tr_63`, `tr_64`, `tr_65`, `tr_66`, `tr_67`, `tr_68`, `tr_69`, `tr_70`, `tr_71`, `tr_72`, `tr_73`, `tr_74`, `tr_75`, `tr_76`, `tr_77`, `tr_78`, `tr_79`, `tr_80`, `tr_81`, `tr_82`, `tr_83`, `tr_84`, `tr_85`, `tr_86`, `tr_87`, `tr_88`, `tr_89`, `tr_90`, `tr_91`, `tr_92`, `tr_93`, `tr_94`, `tr_95`, `tr_96`, `tr_97`, `tr_98`, `tr_99`, `tr_100`, `tr_101`, `tr_102`, `tr_103`, `tr_104`, `tr_105`, `tr_106`, `tr_107`, `tr_108`, `tr_109`, `tr_110`, `tr_111`, `tr_112`, `tr_113`, `tr_114`, `tr_115`, `tr_116`, `tr_117`, `tr_118`, `tr_119`, `tr_120`, `tr_121`, `tr_122`, `tr_123`, `tr_124`, `tr_125`, `tr_126`, `tr_127`, `tr_128`, `tr_129`, `tr_130`, `tr_131`, `tr_132`, `tr_133`, `tr_134`, `tr_135`, `tr_136`, `tr_137`, `tr_138`, `tr_139`, `tr_140`, `tr_141`, `tr_142`, `tr_143`, `tr_144`, `tr_145`, `tr_146`, `tr_147`, `tr_148`, `tr_149`, `tr_150`, `tr_151`, `tr_152`, `tr_153`, `tr_154`, `tr_155`, `tr_156`, `tr_157`, `tr_158`, `tr_159`, `tr_160`, `tr_161`, `tr_162`, `tr_163`, `tr_164`, `tr_165`, `tr_166`, `tr_167`, `tr_168`, `tr_169`, `tr_170`, `tr_171`, `tr_172`, `tr_173`, `tr_174`, `tr_175`, `tr_176`, `tr_177`, `tr_178`, `tr_179`, `tr_180`, `tr_181`, `tr_182`, `tr_183`, `tr_184`, `tr_185`, `tr_186`, `tr_187`, `tr_188`, `tr_189`, `tr_190`, `tr_191`, `tr_192`, `tr_193`, `tr_194`, `tr_195`, `tr_196`, `tr_197`, `tr_198`, `tr_199`, `tr_200`) VALUES
(1, 'تحت الصيانة', 'الموقع تحت الصيانة', 'نأسف للإزعاج ولكننا نجري بعض الصيانة في الوقت الحالي.', 'الملف الشخصي', 'تسجيل الدخول', 'اشتراك', 'إعادة تعيين كلمة المرور', 'هل نسيت كلمة السر', '<p style=\"text-align: right;\"><strong>ما هو \"لوريم إيبسوم\" ؟</strong></p>\r\n<p style=\"text-align: right;\">لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n<p style=\"text-align: right;\"><strong>ما هو \"لوريم إيبسوم\" ؟</strong></p>\r\n<p style=\"text-align: right;\">لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>', '<p style=\"text-align: right;\"><strong>ما هو \"لوريم إيبسوم\" ؟</strong></p>\r\n<p style=\"text-align: right;\">لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n<p style=\"text-align: right;\"><strong>ما هو \"لوريم إيبسوم\" ؟</strong></p>\r\n<p style=\"text-align: right;\">لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>', '404', 'الصفحة غير موجودة', 'ربما تمت إزالة الصفحة التي تبحث عنها وتغيير اسمها أو عدم توفرها مؤقتًا', 'الصفحة الرئيسية', 'سكربت لوكالات العقارات', 'قالب عقارات ، موضوع وكالة عقارية ، عقارات قالب ووردبريس ، عقارات تطبيق جوال ، عقارات تطبيقات أندرويد', 'الطريقة الأسرع والأسهل للحصول على موقع وتطبيق جوال عالي الجودة لوكالتك! العقارية', 'موقعنا', 'ارسل لنا', 'اتصل بنا', 'اكتشف أفضل المنازل', 'ملكيتك هي أولويتنا.', 'اكتشف الآن', 'الملف الشخصي', 'ابحث عن', 'منزلك المثالي', 'المدن', 'النوع', 'الفئات', 'الحالة', 'غرف نوم', 'الحمامات', 'السعر الأدنى', 'السعر الأقصى', 'الميزات الإضافية', 'إبحث', 'الكل', 'أفضل', 'العقارات', 'متميز', 'المجموع', 'أشهر', 'المدن', 'مهمتنا', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه', 'احصل على عرض الآن', 'أحدث', 'المقالات', 'ما الذي يجعلنا', 'الخيار المفضل', 'أفضل', 'شركائنا', 'معلومات عنا', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم', 'روابط سريعة', 'ابقى على تواصل', 'الإشتراك', 'إشترك الآن', 'البريد الإلكتروني', '© 2020 شركة العقارية.', 'تسجيل الدخول', 'غرفة', 'الغرف', 'حمام', 'الحمامات', 'موقف سيارات', 'موقف سيارات', 'الطابق', 'الحجم:', 'الحمامات:', 'الغرف:', 'الطابق:', 'النوع:', 'موقف سيارات:', 'الحالة:', 'تصنيف الطاقة:', 'إرسال', 'طباعة', 'أضف إلى المفضلة', 'إزالة من المفضلة', 'مشاركة', 'الوصف', 'التفاصيل', 'خصائص إضافية', 'الفيديو', 'الموقع', 'شاهد', ' العقارت مماثلة', 'هذا العقار تم بيعه', 'رقم المرجع', 'للمزيد من المعلومات الاتصال بنا', 'الاسم', 'البريد الإلكتروني', 'الهاتف', 'التاريخ', 'أنا مهتم بهذا العقار وأود أن أعرف المزيد من التفاصيل.', 'أرسل الرسالة', 'تم ارسال رسالتك', 'لا يمكن ارسال رسالتك', 'آلة حساب الرهن العقاري', 'تكلفة المنزل', 'الدفعة الأولى', 'الفائدة', 'الفترة', 'احسب', 'الدفع الشهري:', 'الصفحة الرئيسية', 'إجمالي العقارات', 'نتيجة', 'البحث المتقدم', 'البحث المتقدم', 'المناطق', 'المساحة الأدنى', 'المساحة الأقصى', 'الترتيب', 'الأعلى سعراً', 'الأقل سعراً', 'الأحدث', 'الأقدم', 'الأكبر حجما', 'الأصغر حجما', 'لم يتم العثور على شيء!', 'قم بتعديل معايير البحث وحاول مرة أخرى.', 'صفحة', 'الرقم المرجعي', 'مثال: 1002', 'شهادات', 'عملائنا', 'شارك هذا العقار', 'أحدث', 'العقارات', 'أرسل هذا العقار', 'خصم', 'اكتشف أحدث', 'العروض الخاصة', 'عرض', 'البحث عن المنشورات', 'بحث...', 'المقالات المميزة', 'التصنيفات', 'العروض', 'عرض العروض', 'أكمل القراءة', 'بحث عن:', 'شارك هذا المنشور', 'المنشورات ذات الصلة', 'ابقى على تواصل', 'يمكنك استخدام النموذج أدناه أو إرسال بريد إلكتروني', 'معلومات الاتصال', 'تعرف على كيفية التواصل معنا', 'الاسم', 'البريد الإلكتروني', 'الهاتف', 'رسالة', 'أنا أوافق على', 'أرسل رسالة', 'تسجيل الدخول', 'البريد الإلكتروني', 'كلمة المرور', 'ليس لديك حساب؟', 'هل نسيت كلمة المرور؟', 'اشتراك', 'أدخل', 'اشتراك', 'الاسم', 'هل لديك حساب؟', 'تسجيل الدخول', 'أنا أوافق على', 'إعادة تعيين كلمة المرور', 'العودة إلى تسجيل الدخول', 'البريد الإلكتروني فارغ', 'الاسم فارغ', 'كلمة المرور فارغة', 'كلمة التحقق غير صحيحة', 'لا يقل طول الاسم عن 3 أحرف', 'البريد الإلكتروني غير صالح', 'طول كلمة المرور 8-32', 'الحساب موجود مسبقا', 'لم يتم العثور على المستخدم', 'تم إرسال بريد إلكتروني لإعادة تعيين كلمة المرور', 'هناك خطأ ما', 'الرسالة فارغة', 'تم ارسال الرسالة', 'الاسم غير صحيح', 'الحساب محظور أو غير موجود', 'يجب عليك قبول الإشعار القانوني', 'البريد الإلكتروني أو كلمة المرور غير صحيحة', 'تم إعادة تعيين كلمة المرور الخاصة بك', 'كلمة المرور غير متطابقة', 'لقد طلبت عددًا كبيرًا جدًا من إعادة تعيين كلمة الم', 'عضو منذ', 'منطقة الإدارة', 'تعديل بياناتي', 'الخروج', 'مفضلتي', 'لا يوجد محتوى', 'كلمة السر الجديدة', 'تأكيد كلمة المرور', 'حفظ البيانات', 'إلغاء', 'انتظر من فضلك...', 'لقد تم اشتراكك بنجاح', 'تم تحديث بياناتك بنجاح', 'اسمك', 'بريدك الالكتروني', 'البريد الإلكتروني لصديقك', 'تعرف', 'على فريقنا', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `translate_en`
--

DROP TABLE IF EXISTS `translate_en`;
CREATE TABLE IF NOT EXISTS `translate_en` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_maintenancepage` varchar(100) NOT NULL,
  `tr_maintenancetitle` varchar(100) NOT NULL,
  `tr_maintenancesub` text NOT NULL,
  `tr_profilepage` varchar(50) NOT NULL,
  `tr_signinpage` varchar(50) NOT NULL,
  `tr_signuppage` varchar(50) NOT NULL,
  `tr_resetpage` varchar(50) NOT NULL,
  `tr_forgotpage` varchar(50) NOT NULL,
  `tr_termsandconds` text NOT NULL,
  `tr_aboutus` text NOT NULL,
  `tr_eptitle` varchar(100) NOT NULL,
  `tr_epsubtitle` varchar(100) NOT NULL,
  `tr_eptagline` varchar(150) NOT NULL,
  `tr_epbutton` varchar(50) NOT NULL,
  `tr_1` varchar(100) NOT NULL,
  `tr_2` varchar(100) NOT NULL,
  `tr_3` varchar(100) NOT NULL,
  `tr_4` varchar(100) NOT NULL,
  `tr_5` varchar(100) NOT NULL,
  `tr_6` varchar(100) NOT NULL,
  `tr_7` varchar(100) NOT NULL,
  `tr_8` varchar(100) NOT NULL,
  `tr_9` varchar(100) NOT NULL,
  `tr_10` varchar(100) NOT NULL,
  `tr_11` varchar(100) NOT NULL,
  `tr_12` varchar(100) NOT NULL,
  `tr_13` varchar(100) NOT NULL,
  `tr_14` varchar(100) NOT NULL,
  `tr_15` varchar(100) NOT NULL,
  `tr_16` varchar(100) NOT NULL,
  `tr_17` varchar(100) NOT NULL,
  `tr_18` varchar(100) NOT NULL,
  `tr_19` varchar(100) NOT NULL,
  `tr_20` varchar(100) NOT NULL,
  `tr_21` varchar(100) NOT NULL,
  `tr_22` varchar(100) NOT NULL,
  `tr_23` varchar(100) NOT NULL,
  `tr_24` varchar(100) NOT NULL,
  `tr_25` varchar(100) NOT NULL,
  `tr_26` varchar(100) NOT NULL,
  `tr_27` varchar(100) NOT NULL,
  `tr_28` varchar(100) NOT NULL,
  `tr_29` varchar(100) NOT NULL,
  `tr_30` varchar(100) NOT NULL,
  `tr_31` varchar(255) NOT NULL,
  `tr_32` varchar(255) NOT NULL,
  `tr_33` varchar(100) NOT NULL,
  `tr_34` varchar(100) NOT NULL,
  `tr_35` varchar(100) NOT NULL,
  `tr_36` varchar(100) NOT NULL,
  `tr_37` varchar(100) NOT NULL,
  `tr_38` varchar(100) NOT NULL,
  `tr_39` varchar(100) NOT NULL,
  `tr_40` varchar(100) NOT NULL DEFAULT '-',
  `tr_41` varchar(100) NOT NULL DEFAULT '-',
  `tr_42` varchar(100) NOT NULL DEFAULT '-',
  `tr_43` varchar(100) NOT NULL DEFAULT '-',
  `tr_44` varchar(100) NOT NULL DEFAULT '-',
  `tr_45` varchar(100) NOT NULL DEFAULT '-',
  `tr_46` varchar(100) NOT NULL DEFAULT '-',
  `tr_47` varchar(100) NOT NULL DEFAULT '-',
  `tr_48` varchar(100) NOT NULL DEFAULT '-',
  `tr_49` varchar(100) NOT NULL DEFAULT '-',
  `tr_50` varchar(100) NOT NULL DEFAULT '-',
  `tr_51` varchar(100) NOT NULL DEFAULT '-',
  `tr_52` varchar(100) NOT NULL DEFAULT '-',
  `tr_53` varchar(100) NOT NULL DEFAULT '-',
  `tr_54` varchar(100) NOT NULL DEFAULT '-',
  `tr_55` varchar(100) NOT NULL DEFAULT '-',
  `tr_56` varchar(100) NOT NULL DEFAULT '-',
  `tr_57` varchar(100) NOT NULL DEFAULT '-',
  `tr_58` varchar(100) NOT NULL DEFAULT '-',
  `tr_59` varchar(100) NOT NULL DEFAULT '-',
  `tr_60` varchar(100) NOT NULL DEFAULT '-',
  `tr_61` varchar(100) NOT NULL DEFAULT '-',
  `tr_62` varchar(100) NOT NULL DEFAULT '-',
  `tr_63` varchar(100) NOT NULL DEFAULT '-',
  `tr_64` varchar(100) NOT NULL DEFAULT '-',
  `tr_65` varchar(100) NOT NULL DEFAULT '-',
  `tr_66` varchar(100) NOT NULL DEFAULT '-',
  `tr_67` varchar(100) NOT NULL DEFAULT '-',
  `tr_68` varchar(100) NOT NULL DEFAULT '-',
  `tr_69` varchar(100) NOT NULL DEFAULT '-',
  `tr_70` varchar(100) NOT NULL DEFAULT '-',
  `tr_71` varchar(100) NOT NULL DEFAULT '-',
  `tr_72` varchar(100) NOT NULL DEFAULT '-',
  `tr_73` varchar(100) NOT NULL DEFAULT '-',
  `tr_74` varchar(100) NOT NULL DEFAULT '-',
  `tr_75` varchar(100) NOT NULL DEFAULT '-',
  `tr_76` varchar(100) NOT NULL DEFAULT '-',
  `tr_77` varchar(100) NOT NULL DEFAULT '-',
  `tr_78` varchar(100) NOT NULL DEFAULT '-',
  `tr_79` varchar(100) NOT NULL DEFAULT '-',
  `tr_80` varchar(100) NOT NULL DEFAULT '-',
  `tr_81` varchar(100) NOT NULL DEFAULT '-',
  `tr_82` varchar(100) NOT NULL DEFAULT '-',
  `tr_83` varchar(100) NOT NULL DEFAULT '-',
  `tr_84` varchar(100) NOT NULL DEFAULT '-',
  `tr_85` varchar(100) NOT NULL DEFAULT '-',
  `tr_86` varchar(100) NOT NULL DEFAULT '-',
  `tr_87` varchar(100) NOT NULL DEFAULT '-',
  `tr_88` varchar(100) NOT NULL DEFAULT '-',
  `tr_89` varchar(100) NOT NULL DEFAULT '-',
  `tr_90` varchar(100) NOT NULL DEFAULT '-',
  `tr_91` varchar(100) NOT NULL DEFAULT '-',
  `tr_92` varchar(100) NOT NULL DEFAULT '-',
  `tr_93` varchar(100) NOT NULL DEFAULT '-',
  `tr_94` varchar(100) NOT NULL DEFAULT '-',
  `tr_95` varchar(100) NOT NULL DEFAULT '-',
  `tr_96` varchar(100) NOT NULL DEFAULT '-',
  `tr_97` varchar(100) NOT NULL DEFAULT '-',
  `tr_98` varchar(100) NOT NULL DEFAULT '-',
  `tr_99` varchar(100) NOT NULL DEFAULT '-',
  `tr_100` varchar(100) NOT NULL DEFAULT '-',
  `tr_101` varchar(50) NOT NULL DEFAULT '-',
  `tr_102` varchar(50) NOT NULL DEFAULT '-',
  `tr_103` varchar(50) NOT NULL DEFAULT '-',
  `tr_104` varchar(50) NOT NULL DEFAULT '-',
  `tr_105` varchar(50) NOT NULL DEFAULT '-',
  `tr_106` varchar(50) NOT NULL DEFAULT '-',
  `tr_107` varchar(50) NOT NULL DEFAULT '-',
  `tr_108` varchar(50) NOT NULL DEFAULT '-',
  `tr_109` varchar(50) NOT NULL DEFAULT '-',
  `tr_110` varchar(50) NOT NULL DEFAULT '-',
  `tr_111` varchar(50) NOT NULL DEFAULT '-',
  `tr_112` varchar(50) NOT NULL DEFAULT '-',
  `tr_113` varchar(50) NOT NULL DEFAULT '-',
  `tr_114` varchar(50) NOT NULL DEFAULT '-',
  `tr_115` varchar(50) NOT NULL DEFAULT '-',
  `tr_116` varchar(50) NOT NULL DEFAULT '-',
  `tr_117` varchar(50) NOT NULL DEFAULT '-',
  `tr_118` varchar(50) NOT NULL DEFAULT '-',
  `tr_119` varchar(50) NOT NULL DEFAULT '-',
  `tr_120` varchar(50) NOT NULL DEFAULT '-',
  `tr_121` varchar(50) NOT NULL DEFAULT '-',
  `tr_122` varchar(50) NOT NULL DEFAULT '-',
  `tr_123` varchar(50) NOT NULL DEFAULT '-',
  `tr_124` varchar(50) NOT NULL DEFAULT '-',
  `tr_125` varchar(50) NOT NULL DEFAULT '-',
  `tr_126` varchar(50) NOT NULL DEFAULT '-',
  `tr_127` varchar(50) NOT NULL DEFAULT '-',
  `tr_128` varchar(50) NOT NULL DEFAULT '-',
  `tr_129` varchar(50) NOT NULL DEFAULT '-',
  `tr_130` varchar(50) NOT NULL DEFAULT '-',
  `tr_131` varchar(50) NOT NULL DEFAULT '-',
  `tr_132` varchar(50) NOT NULL DEFAULT '-',
  `tr_133` varchar(50) NOT NULL DEFAULT '-',
  `tr_134` varchar(50) NOT NULL DEFAULT '-',
  `tr_135` varchar(50) NOT NULL DEFAULT '-',
  `tr_136` varchar(50) NOT NULL DEFAULT '-',
  `tr_137` varchar(50) NOT NULL DEFAULT '-',
  `tr_138` varchar(50) NOT NULL DEFAULT '-',
  `tr_139` varchar(50) NOT NULL DEFAULT '-',
  `tr_140` varchar(50) NOT NULL DEFAULT '-',
  `tr_141` varchar(50) NOT NULL DEFAULT '-',
  `tr_142` varchar(50) NOT NULL DEFAULT '-',
  `tr_143` varchar(50) NOT NULL DEFAULT '-',
  `tr_144` varchar(50) NOT NULL DEFAULT '-',
  `tr_145` varchar(50) NOT NULL DEFAULT '-',
  `tr_146` varchar(50) NOT NULL DEFAULT '-',
  `tr_147` varchar(50) NOT NULL DEFAULT '-',
  `tr_148` varchar(50) NOT NULL DEFAULT '-',
  `tr_149` varchar(50) NOT NULL DEFAULT '-',
  `tr_150` varchar(50) NOT NULL DEFAULT '-',
  `tr_151` varchar(50) NOT NULL DEFAULT '-',
  `tr_152` varchar(50) NOT NULL DEFAULT '-',
  `tr_153` varchar(50) NOT NULL DEFAULT '-',
  `tr_154` varchar(50) NOT NULL DEFAULT '-',
  `tr_155` varchar(50) NOT NULL DEFAULT '-',
  `tr_156` varchar(50) NOT NULL DEFAULT '-',
  `tr_157` varchar(50) NOT NULL DEFAULT '-',
  `tr_158` varchar(50) NOT NULL DEFAULT '-',
  `tr_159` varchar(50) NOT NULL DEFAULT '-',
  `tr_160` varchar(50) NOT NULL DEFAULT '-',
  `tr_161` varchar(50) NOT NULL DEFAULT '-',
  `tr_162` varchar(50) NOT NULL DEFAULT '-',
  `tr_163` varchar(50) NOT NULL DEFAULT '-',
  `tr_164` varchar(50) NOT NULL DEFAULT '-',
  `tr_165` varchar(50) NOT NULL DEFAULT '-',
  `tr_166` varchar(50) NOT NULL DEFAULT '-',
  `tr_167` varchar(50) NOT NULL DEFAULT '-',
  `tr_168` varchar(50) NOT NULL DEFAULT '-',
  `tr_169` varchar(50) NOT NULL DEFAULT '-',
  `tr_170` varchar(50) NOT NULL DEFAULT '-',
  `tr_171` varchar(50) NOT NULL DEFAULT '-',
  `tr_172` varchar(50) NOT NULL DEFAULT '-',
  `tr_173` varchar(50) NOT NULL DEFAULT '-',
  `tr_174` varchar(50) NOT NULL DEFAULT '-',
  `tr_175` varchar(50) NOT NULL DEFAULT '-',
  `tr_176` varchar(50) NOT NULL DEFAULT '-',
  `tr_177` varchar(50) NOT NULL DEFAULT '-',
  `tr_178` varchar(50) NOT NULL DEFAULT '-',
  `tr_179` varchar(50) NOT NULL DEFAULT '-',
  `tr_180` varchar(50) NOT NULL DEFAULT '-',
  `tr_181` varchar(50) NOT NULL DEFAULT '-',
  `tr_182` varchar(50) NOT NULL DEFAULT '-',
  `tr_183` varchar(50) NOT NULL DEFAULT '-',
  `tr_184` varchar(50) NOT NULL DEFAULT '-',
  `tr_185` varchar(50) NOT NULL DEFAULT '-',
  `tr_186` varchar(50) NOT NULL DEFAULT '-',
  `tr_187` varchar(50) NOT NULL DEFAULT '-',
  `tr_188` varchar(50) NOT NULL DEFAULT '-',
  `tr_189` varchar(50) NOT NULL DEFAULT '-',
  `tr_190` varchar(50) NOT NULL DEFAULT '-',
  `tr_191` varchar(50) NOT NULL DEFAULT '-',
  `tr_192` varchar(50) NOT NULL DEFAULT '-',
  `tr_193` varchar(50) NOT NULL DEFAULT '-',
  `tr_194` varchar(50) NOT NULL DEFAULT '-',
  `tr_195` varchar(50) NOT NULL DEFAULT '-',
  `tr_196` varchar(50) NOT NULL DEFAULT '-',
  `tr_197` varchar(50) NOT NULL DEFAULT '-',
  `tr_198` varchar(50) NOT NULL DEFAULT '-',
  `tr_199` varchar(50) NOT NULL DEFAULT '-',
  `tr_200` varchar(50) NOT NULL DEFAULT '-',
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `translate_en`
--

INSERT INTO `translate_en` (`tr_id`, `tr_maintenancepage`, `tr_maintenancetitle`, `tr_maintenancesub`, `tr_profilepage`, `tr_signinpage`, `tr_signuppage`, `tr_resetpage`, `tr_forgotpage`, `tr_termsandconds`, `tr_aboutus`, `tr_eptitle`, `tr_epsubtitle`, `tr_eptagline`, `tr_epbutton`, `tr_1`, `tr_2`, `tr_3`, `tr_4`, `tr_5`, `tr_6`, `tr_7`, `tr_8`, `tr_9`, `tr_10`, `tr_11`, `tr_12`, `tr_13`, `tr_14`, `tr_15`, `tr_16`, `tr_17`, `tr_18`, `tr_19`, `tr_20`, `tr_21`, `tr_22`, `tr_23`, `tr_24`, `tr_25`, `tr_26`, `tr_27`, `tr_28`, `tr_29`, `tr_30`, `tr_31`, `tr_32`, `tr_33`, `tr_34`, `tr_35`, `tr_36`, `tr_37`, `tr_38`, `tr_39`, `tr_40`, `tr_41`, `tr_42`, `tr_43`, `tr_44`, `tr_45`, `tr_46`, `tr_47`, `tr_48`, `tr_49`, `tr_50`, `tr_51`, `tr_52`, `tr_53`, `tr_54`, `tr_55`, `tr_56`, `tr_57`, `tr_58`, `tr_59`, `tr_60`, `tr_61`, `tr_62`, `tr_63`, `tr_64`, `tr_65`, `tr_66`, `tr_67`, `tr_68`, `tr_69`, `tr_70`, `tr_71`, `tr_72`, `tr_73`, `tr_74`, `tr_75`, `tr_76`, `tr_77`, `tr_78`, `tr_79`, `tr_80`, `tr_81`, `tr_82`, `tr_83`, `tr_84`, `tr_85`, `tr_86`, `tr_87`, `tr_88`, `tr_89`, `tr_90`, `tr_91`, `tr_92`, `tr_93`, `tr_94`, `tr_95`, `tr_96`, `tr_97`, `tr_98`, `tr_99`, `tr_100`, `tr_101`, `tr_102`, `tr_103`, `tr_104`, `tr_105`, `tr_106`, `tr_107`, `tr_108`, `tr_109`, `tr_110`, `tr_111`, `tr_112`, `tr_113`, `tr_114`, `tr_115`, `tr_116`, `tr_117`, `tr_118`, `tr_119`, `tr_120`, `tr_121`, `tr_122`, `tr_123`, `tr_124`, `tr_125`, `tr_126`, `tr_127`, `tr_128`, `tr_129`, `tr_130`, `tr_131`, `tr_132`, `tr_133`, `tr_134`, `tr_135`, `tr_136`, `tr_137`, `tr_138`, `tr_139`, `tr_140`, `tr_141`, `tr_142`, `tr_143`, `tr_144`, `tr_145`, `tr_146`, `tr_147`, `tr_148`, `tr_149`, `tr_150`, `tr_151`, `tr_152`, `tr_153`, `tr_154`, `tr_155`, `tr_156`, `tr_157`, `tr_158`, `tr_159`, `tr_160`, `tr_161`, `tr_162`, `tr_163`, `tr_164`, `tr_165`, `tr_166`, `tr_167`, `tr_168`, `tr_169`, `tr_170`, `tr_171`, `tr_172`, `tr_173`, `tr_174`, `tr_175`, `tr_176`, `tr_177`, `tr_178`, `tr_179`, `tr_180`, `tr_181`, `tr_182`, `tr_183`, `tr_184`, `tr_185`, `tr_186`, `tr_187`, `tr_188`, `tr_189`, `tr_190`, `tr_191`, `tr_192`, `tr_193`, `tr_194`, `tr_195`, `tr_196`, `tr_197`, `tr_198`, `tr_199`, `tr_200`) VALUES
(1, 'Under Maintenance', 'Website Under Maintenance', 'Sorry for the inconvenience but we’re performing some maintenance at the moment.', 'Profile', 'Sign In', 'Sign Up', 'Reset Password', 'Forgot Password', '<p><strong>Terms &amp; Conditions</strong></p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Why do we use it?</strong></p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p><strong>About Us</strong></p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Why do we use it?</strong></p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '404', 'Page Not Found', 'The page you are looking for might have been removed had it\'s name changed or is temporarily unavailable.', 'Home Page', 'a1lands', 'a1lands', 'a1lands', 'Our Location', 'Email Us', 'Call Us', 'Discover The Best Houses', 'Your Property, Our Priority.', 'Discover Now', 'View Profile', 'Find Your', 'Perfect Home', 'Cities', 'Types', 'Status', 'Conditions', 'Bedrooms', 'Bathrooms', 'Min Price', 'Max Price', 'Other Features', 'Search', 'Any', 'Featured', 'Properties', 'Featured', 'Total', 'Featured', 'Popular Cities', 'Our Mission', 'Mauris ac consectetur ante, dapibus gravida tellus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Get a Quote', 'Our Blog', 'News & Articles', 'What Makes Us', 'Preferred Choice', 'Our Best', 'Partners', 'About Us', 'An About Us page helps your company make a good first impression, and is critical for building custo', 'Quick Links', 'Get In Touch', 'Newsletter', 'Suscribe Now', 'Email Address', '© 2024 a1lands', 'Sign In', 'Bed', 'Beds', 'Bath', 'Baths', 'Garage', 'Garages', 'Floor', 'Size:', 'Bathrooms:', 'Bedrooms:', 'Floor:', 'Type:', 'Garages:', 'Condition:', 'Energy Rating:', 'Email', 'Print', 'Favorite', 'Unfavorite', 'Share', 'Property Highlights', 'Property Details', 'Property Features', 'Property Video', 'Property Location', 'Play Video', 'Similar Properties', 'This property has been sold', 'Property Reference:', 'Make An Appoinment', 'Name', 'Email', 'Phone', 'Date', 'I\'m interested in this property and I\'d like to know more details.', 'Send Message', 'Your message has been sent', 'Your message could not be sent', 'Mortgage Calculator', 'Cost of House', 'Down Payment', 'APR (Interest)', 'Period (How Long)', 'Calculate', 'Montly Payment:', 'Home', 'Total Properties', 'Results', 'Filter', 'Advanced Search', 'Zones', 'Min Area', 'Max Area', 'Default', 'Price High to Low', 'Price Low to High', 'Date New to Old', 'Date Old to New', 'Size Largest to Lowest', 'Size Lowest to Largest', 'Nothing found!', 'Modify your search criteria and try again.', 'Page', 'Reference', 'Example: 1002', 'Our Client', 'Testimonials', 'Share this property', 'Latest', 'Properties', 'Send this property', 'Save', 'Discover Our', 'Special Offers', 'Offer', 'Search Posts', 'Search...', 'Featured Posts', 'Categories', 'Offers', 'Show Offers', 'Read More', 'Search For:', 'Share Post', 'Related Posts', 'Get In Touch', 'You can use the form or just write us an email', 'Contact Info', 'Find out how to get in touch with us', 'Name', 'Email', 'Phone', 'Message', 'I Agree to the', 'Send Message', 'Sign In', 'Email', 'Password', 'Don\'t you have an account?', 'Forgot Password?', 'Sign Up', 'Enter', 'Sign Up', 'Name', 'Already have an account?', 'Sign In', 'I Agree to the', 'Reset Password', 'Back to Sign In', 'Email is Empty', 'Name is Empty', 'Password is Empty', 'Captcha Check Failed', 'Minimum Name Length 3', 'Email is Invalid', 'Password Length 8-32', 'Account Already Registered', 'No User Found', 'Password Reset Email Sent', 'Something Wrong', 'Message is empty', 'Message Has Been Sent', 'Name is Invalid', 'Account Disabled or Not Found', 'You must accept the Legal Notice', 'Incorrect Email or Password', 'Your password has been reset', 'Password does not match', 'You have requested too many password resets.', 'Member Since', 'Admin Area', 'Edit Profile', 'Sign Out', 'My Favorites', 'No Favorites Found', 'New Password', 'Confirm Password', 'Save Changes', 'Cancel', 'Please wait...', 'You have successfully subscribed', 'Your profile was successfully updated', 'Your Name', 'Your Email', 'Friend Email', 'Meet', 'Our Team', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `translate_es`
--

DROP TABLE IF EXISTS `translate_es`;
CREATE TABLE IF NOT EXISTS `translate_es` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_maintenancepage` varchar(100) NOT NULL,
  `tr_maintenancetitle` varchar(100) NOT NULL,
  `tr_maintenancesub` text NOT NULL,
  `tr_profilepage` varchar(50) NOT NULL,
  `tr_signinpage` varchar(50) NOT NULL,
  `tr_signuppage` varchar(50) NOT NULL,
  `tr_resetpage` varchar(50) NOT NULL,
  `tr_forgotpage` varchar(50) NOT NULL,
  `tr_termsandconds` text NOT NULL,
  `tr_aboutus` text NOT NULL,
  `tr_eptitle` varchar(100) NOT NULL,
  `tr_epsubtitle` varchar(100) NOT NULL,
  `tr_eptagline` varchar(150) NOT NULL,
  `tr_epbutton` varchar(50) NOT NULL,
  `tr_1` varchar(100) NOT NULL,
  `tr_2` varchar(100) NOT NULL,
  `tr_3` varchar(100) NOT NULL,
  `tr_4` varchar(100) NOT NULL,
  `tr_5` varchar(100) NOT NULL,
  `tr_6` varchar(100) NOT NULL,
  `tr_7` varchar(100) NOT NULL,
  `tr_8` varchar(100) NOT NULL,
  `tr_9` varchar(100) NOT NULL,
  `tr_10` varchar(100) NOT NULL,
  `tr_11` varchar(100) NOT NULL,
  `tr_12` varchar(100) NOT NULL,
  `tr_13` varchar(100) NOT NULL,
  `tr_14` varchar(100) NOT NULL,
  `tr_15` varchar(100) NOT NULL,
  `tr_16` varchar(100) NOT NULL,
  `tr_17` varchar(100) NOT NULL,
  `tr_18` varchar(100) NOT NULL,
  `tr_19` varchar(100) NOT NULL,
  `tr_20` varchar(100) NOT NULL,
  `tr_21` varchar(100) NOT NULL,
  `tr_22` varchar(100) NOT NULL,
  `tr_23` varchar(100) NOT NULL,
  `tr_24` varchar(100) NOT NULL,
  `tr_25` varchar(100) NOT NULL,
  `tr_26` varchar(100) NOT NULL,
  `tr_27` varchar(100) NOT NULL,
  `tr_28` varchar(100) NOT NULL,
  `tr_29` varchar(100) NOT NULL,
  `tr_30` varchar(100) NOT NULL,
  `tr_31` varchar(255) NOT NULL,
  `tr_32` varchar(255) NOT NULL,
  `tr_33` varchar(100) NOT NULL,
  `tr_34` varchar(100) NOT NULL,
  `tr_35` varchar(100) NOT NULL,
  `tr_36` varchar(100) NOT NULL,
  `tr_37` varchar(100) NOT NULL,
  `tr_38` varchar(100) NOT NULL,
  `tr_39` varchar(100) NOT NULL,
  `tr_40` varchar(100) NOT NULL DEFAULT '-',
  `tr_41` varchar(100) NOT NULL DEFAULT '-',
  `tr_42` varchar(100) NOT NULL DEFAULT '-',
  `tr_43` varchar(100) NOT NULL DEFAULT '-',
  `tr_44` varchar(100) NOT NULL DEFAULT '-',
  `tr_45` varchar(100) NOT NULL DEFAULT '-',
  `tr_46` varchar(100) NOT NULL DEFAULT '-',
  `tr_47` varchar(100) NOT NULL DEFAULT '-',
  `tr_48` varchar(100) NOT NULL DEFAULT '-',
  `tr_49` varchar(100) NOT NULL DEFAULT '-',
  `tr_50` varchar(100) NOT NULL DEFAULT '-',
  `tr_51` varchar(100) NOT NULL DEFAULT '-',
  `tr_52` varchar(100) NOT NULL DEFAULT '-',
  `tr_53` varchar(100) NOT NULL DEFAULT '-',
  `tr_54` varchar(100) NOT NULL DEFAULT '-',
  `tr_55` varchar(100) NOT NULL DEFAULT '-',
  `tr_56` varchar(100) NOT NULL DEFAULT '-',
  `tr_57` varchar(100) NOT NULL DEFAULT '-',
  `tr_58` varchar(100) NOT NULL DEFAULT '-',
  `tr_59` varchar(100) NOT NULL DEFAULT '-',
  `tr_60` varchar(100) NOT NULL DEFAULT '-',
  `tr_61` varchar(100) NOT NULL DEFAULT '-',
  `tr_62` varchar(100) NOT NULL DEFAULT '-',
  `tr_63` varchar(100) NOT NULL DEFAULT '-',
  `tr_64` varchar(100) NOT NULL DEFAULT '-',
  `tr_65` varchar(100) NOT NULL DEFAULT '-',
  `tr_66` varchar(100) NOT NULL DEFAULT '-',
  `tr_67` varchar(100) NOT NULL DEFAULT '-',
  `tr_68` varchar(100) NOT NULL DEFAULT '-',
  `tr_69` varchar(100) NOT NULL DEFAULT '-',
  `tr_70` varchar(100) NOT NULL DEFAULT '-',
  `tr_71` varchar(100) NOT NULL DEFAULT '-',
  `tr_72` varchar(100) NOT NULL DEFAULT '-',
  `tr_73` varchar(100) NOT NULL DEFAULT '-',
  `tr_74` varchar(100) NOT NULL DEFAULT '-',
  `tr_75` varchar(100) NOT NULL DEFAULT '-',
  `tr_76` varchar(100) NOT NULL DEFAULT '-',
  `tr_77` varchar(100) NOT NULL DEFAULT '-',
  `tr_78` varchar(100) NOT NULL DEFAULT '-',
  `tr_79` varchar(100) NOT NULL DEFAULT '-',
  `tr_80` varchar(100) NOT NULL DEFAULT '-',
  `tr_81` varchar(100) NOT NULL DEFAULT '-',
  `tr_82` varchar(100) NOT NULL DEFAULT '-',
  `tr_83` varchar(100) NOT NULL DEFAULT '-',
  `tr_84` varchar(100) NOT NULL DEFAULT '-',
  `tr_85` varchar(100) NOT NULL DEFAULT '-',
  `tr_86` varchar(100) NOT NULL DEFAULT '-',
  `tr_87` varchar(100) NOT NULL DEFAULT '-',
  `tr_88` varchar(100) NOT NULL DEFAULT '-',
  `tr_89` varchar(100) NOT NULL DEFAULT '-',
  `tr_90` varchar(100) NOT NULL DEFAULT '-',
  `tr_91` varchar(100) NOT NULL DEFAULT '-',
  `tr_92` varchar(100) NOT NULL DEFAULT '-',
  `tr_93` varchar(100) NOT NULL DEFAULT '-',
  `tr_94` varchar(100) NOT NULL DEFAULT '-',
  `tr_95` varchar(100) NOT NULL DEFAULT '-',
  `tr_96` varchar(100) NOT NULL DEFAULT '-',
  `tr_97` varchar(100) NOT NULL DEFAULT '-',
  `tr_98` varchar(100) NOT NULL DEFAULT '-',
  `tr_99` varchar(100) NOT NULL DEFAULT '-',
  `tr_100` varchar(100) NOT NULL DEFAULT '-',
  `tr_101` varchar(50) NOT NULL DEFAULT '-',
  `tr_102` varchar(50) NOT NULL DEFAULT '-',
  `tr_103` varchar(50) NOT NULL DEFAULT '-',
  `tr_104` varchar(50) NOT NULL DEFAULT '-',
  `tr_105` varchar(50) NOT NULL DEFAULT '-',
  `tr_106` varchar(50) NOT NULL DEFAULT '-',
  `tr_107` varchar(50) NOT NULL DEFAULT '-',
  `tr_108` varchar(50) NOT NULL DEFAULT '-',
  `tr_109` varchar(50) NOT NULL DEFAULT '-',
  `tr_110` varchar(50) NOT NULL DEFAULT '-',
  `tr_111` varchar(50) NOT NULL DEFAULT '-',
  `tr_112` varchar(50) NOT NULL DEFAULT '-',
  `tr_113` varchar(50) NOT NULL DEFAULT '-',
  `tr_114` varchar(50) NOT NULL DEFAULT '-',
  `tr_115` varchar(50) NOT NULL DEFAULT '-',
  `tr_116` varchar(50) NOT NULL DEFAULT '-',
  `tr_117` varchar(50) NOT NULL DEFAULT '-',
  `tr_118` varchar(50) NOT NULL DEFAULT '-',
  `tr_119` varchar(50) NOT NULL DEFAULT '-',
  `tr_120` varchar(50) NOT NULL DEFAULT '-',
  `tr_121` varchar(50) NOT NULL DEFAULT '-',
  `tr_122` varchar(50) NOT NULL DEFAULT '-',
  `tr_123` varchar(50) NOT NULL DEFAULT '-',
  `tr_124` varchar(50) NOT NULL DEFAULT '-',
  `tr_125` varchar(50) NOT NULL DEFAULT '-',
  `tr_126` varchar(50) NOT NULL DEFAULT '-',
  `tr_127` varchar(50) NOT NULL DEFAULT '-',
  `tr_128` varchar(50) NOT NULL DEFAULT '-',
  `tr_129` varchar(50) NOT NULL DEFAULT '-',
  `tr_130` varchar(50) NOT NULL DEFAULT '-',
  `tr_131` varchar(50) NOT NULL DEFAULT '-',
  `tr_132` varchar(50) NOT NULL DEFAULT '-',
  `tr_133` varchar(50) NOT NULL DEFAULT '-',
  `tr_134` varchar(50) NOT NULL DEFAULT '-',
  `tr_135` varchar(50) NOT NULL DEFAULT '-',
  `tr_136` varchar(50) NOT NULL DEFAULT '-',
  `tr_137` varchar(50) NOT NULL DEFAULT '-',
  `tr_138` varchar(50) NOT NULL DEFAULT '-',
  `tr_139` varchar(50) NOT NULL DEFAULT '-',
  `tr_140` varchar(50) NOT NULL DEFAULT '-',
  `tr_141` varchar(50) NOT NULL DEFAULT '-',
  `tr_142` varchar(50) NOT NULL DEFAULT '-',
  `tr_143` varchar(50) NOT NULL DEFAULT '-',
  `tr_144` varchar(50) NOT NULL DEFAULT '-',
  `tr_145` varchar(50) NOT NULL DEFAULT '-',
  `tr_146` varchar(50) NOT NULL DEFAULT '-',
  `tr_147` varchar(50) NOT NULL DEFAULT '-',
  `tr_148` varchar(50) NOT NULL DEFAULT '-',
  `tr_149` varchar(50) NOT NULL DEFAULT '-',
  `tr_150` varchar(50) NOT NULL DEFAULT '-',
  `tr_151` varchar(50) NOT NULL DEFAULT '-',
  `tr_152` varchar(50) NOT NULL DEFAULT '-',
  `tr_153` varchar(50) NOT NULL DEFAULT '-',
  `tr_154` varchar(50) NOT NULL DEFAULT '-',
  `tr_155` varchar(50) NOT NULL DEFAULT '-',
  `tr_156` varchar(50) NOT NULL DEFAULT '-',
  `tr_157` varchar(50) NOT NULL DEFAULT '-',
  `tr_158` varchar(50) NOT NULL DEFAULT '-',
  `tr_159` varchar(50) NOT NULL DEFAULT '-',
  `tr_160` varchar(50) NOT NULL DEFAULT '-',
  `tr_161` varchar(50) NOT NULL DEFAULT '-',
  `tr_162` varchar(50) NOT NULL DEFAULT '-',
  `tr_163` varchar(50) NOT NULL DEFAULT '-',
  `tr_164` varchar(50) NOT NULL DEFAULT '-',
  `tr_165` varchar(50) NOT NULL DEFAULT '-',
  `tr_166` varchar(50) NOT NULL DEFAULT '-',
  `tr_167` varchar(50) NOT NULL DEFAULT '-',
  `tr_168` varchar(50) NOT NULL DEFAULT '-',
  `tr_169` varchar(50) NOT NULL DEFAULT '-',
  `tr_170` varchar(50) NOT NULL DEFAULT '-',
  `tr_171` varchar(50) NOT NULL DEFAULT '-',
  `tr_172` varchar(50) NOT NULL DEFAULT '-',
  `tr_173` varchar(50) NOT NULL DEFAULT '-',
  `tr_174` varchar(50) NOT NULL DEFAULT '-',
  `tr_175` varchar(50) NOT NULL DEFAULT '-',
  `tr_176` varchar(50) NOT NULL DEFAULT '-',
  `tr_177` varchar(50) NOT NULL DEFAULT '-',
  `tr_178` varchar(50) NOT NULL DEFAULT '-',
  `tr_179` varchar(50) NOT NULL DEFAULT '-',
  `tr_180` varchar(50) NOT NULL DEFAULT '-',
  `tr_181` varchar(50) NOT NULL DEFAULT '-',
  `tr_182` varchar(50) NOT NULL DEFAULT '-',
  `tr_183` varchar(50) NOT NULL DEFAULT '-',
  `tr_184` varchar(50) NOT NULL DEFAULT '-',
  `tr_185` varchar(50) NOT NULL DEFAULT '-',
  `tr_186` varchar(50) NOT NULL DEFAULT '-',
  `tr_187` varchar(50) NOT NULL DEFAULT '-',
  `tr_188` varchar(50) NOT NULL DEFAULT '-',
  `tr_189` varchar(50) NOT NULL DEFAULT '-',
  `tr_190` varchar(50) NOT NULL DEFAULT '-',
  `tr_191` varchar(50) NOT NULL DEFAULT '-',
  `tr_192` varchar(50) NOT NULL DEFAULT '-',
  `tr_193` varchar(50) NOT NULL DEFAULT '-',
  `tr_194` varchar(50) NOT NULL DEFAULT '-',
  `tr_195` varchar(50) NOT NULL DEFAULT '-',
  `tr_196` varchar(50) NOT NULL DEFAULT '-',
  `tr_197` varchar(50) NOT NULL DEFAULT '-',
  `tr_198` varchar(50) NOT NULL DEFAULT '-',
  `tr_199` varchar(50) NOT NULL DEFAULT '-',
  `tr_200` varchar(50) NOT NULL DEFAULT '-',
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `translate_es`
--

INSERT INTO `translate_es` (`tr_id`, `tr_maintenancepage`, `tr_maintenancetitle`, `tr_maintenancesub`, `tr_profilepage`, `tr_signinpage`, `tr_signuppage`, `tr_resetpage`, `tr_forgotpage`, `tr_termsandconds`, `tr_aboutus`, `tr_eptitle`, `tr_epsubtitle`, `tr_eptagline`, `tr_epbutton`, `tr_1`, `tr_2`, `tr_3`, `tr_4`, `tr_5`, `tr_6`, `tr_7`, `tr_8`, `tr_9`, `tr_10`, `tr_11`, `tr_12`, `tr_13`, `tr_14`, `tr_15`, `tr_16`, `tr_17`, `tr_18`, `tr_19`, `tr_20`, `tr_21`, `tr_22`, `tr_23`, `tr_24`, `tr_25`, `tr_26`, `tr_27`, `tr_28`, `tr_29`, `tr_30`, `tr_31`, `tr_32`, `tr_33`, `tr_34`, `tr_35`, `tr_36`, `tr_37`, `tr_38`, `tr_39`, `tr_40`, `tr_41`, `tr_42`, `tr_43`, `tr_44`, `tr_45`, `tr_46`, `tr_47`, `tr_48`, `tr_49`, `tr_50`, `tr_51`, `tr_52`, `tr_53`, `tr_54`, `tr_55`, `tr_56`, `tr_57`, `tr_58`, `tr_59`, `tr_60`, `tr_61`, `tr_62`, `tr_63`, `tr_64`, `tr_65`, `tr_66`, `tr_67`, `tr_68`, `tr_69`, `tr_70`, `tr_71`, `tr_72`, `tr_73`, `tr_74`, `tr_75`, `tr_76`, `tr_77`, `tr_78`, `tr_79`, `tr_80`, `tr_81`, `tr_82`, `tr_83`, `tr_84`, `tr_85`, `tr_86`, `tr_87`, `tr_88`, `tr_89`, `tr_90`, `tr_91`, `tr_92`, `tr_93`, `tr_94`, `tr_95`, `tr_96`, `tr_97`, `tr_98`, `tr_99`, `tr_100`, `tr_101`, `tr_102`, `tr_103`, `tr_104`, `tr_105`, `tr_106`, `tr_107`, `tr_108`, `tr_109`, `tr_110`, `tr_111`, `tr_112`, `tr_113`, `tr_114`, `tr_115`, `tr_116`, `tr_117`, `tr_118`, `tr_119`, `tr_120`, `tr_121`, `tr_122`, `tr_123`, `tr_124`, `tr_125`, `tr_126`, `tr_127`, `tr_128`, `tr_129`, `tr_130`, `tr_131`, `tr_132`, `tr_133`, `tr_134`, `tr_135`, `tr_136`, `tr_137`, `tr_138`, `tr_139`, `tr_140`, `tr_141`, `tr_142`, `tr_143`, `tr_144`, `tr_145`, `tr_146`, `tr_147`, `tr_148`, `tr_149`, `tr_150`, `tr_151`, `tr_152`, `tr_153`, `tr_154`, `tr_155`, `tr_156`, `tr_157`, `tr_158`, `tr_159`, `tr_160`, `tr_161`, `tr_162`, `tr_163`, `tr_164`, `tr_165`, `tr_166`, `tr_167`, `tr_168`, `tr_169`, `tr_170`, `tr_171`, `tr_172`, `tr_173`, `tr_174`, `tr_175`, `tr_176`, `tr_177`, `tr_178`, `tr_179`, `tr_180`, `tr_181`, `tr_182`, `tr_183`, `tr_184`, `tr_185`, `tr_186`, `tr_187`, `tr_188`, `tr_189`, `tr_190`, `tr_191`, `tr_192`, `tr_193`, `tr_194`, `tr_195`, `tr_196`, `tr_197`, `tr_198`, `tr_199`, `tr_200`) VALUES
(1, 'En Mantenimiento', 'Sitio web bajo mantenimiento', 'Disculpe las molestias, pero estamos realizando algunas tareas de mantenimiento en este momento.', 'Perfil', 'Iniciar Sesión ', 'Registrarse', 'Restablecer la contraseña', 'Recordar contraseña', '<p><strong>&iquest;Qu&eacute; es Lorem Ipsum?</strong></p>\r\n<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>\r\n<p><strong>&iquest;Por qu&eacute; lo usamos?</strong></p>\r\n<p>Es un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aqu&iacute;, contenido aqu&iacute;\".</p>\r\n<p>Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a trav&eacute;s de los a&ntilde;os, algunas veces por accidente, otras veces a prop&oacute;sito (por ejemplo insert&aacute;ndole humor y cosas por el estilo).</p>', '<p><strong>&iquest;Qu&eacute; es Lorem Ipsum?</strong></p>\r\n<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>\r\n<p><strong>&iquest;Por qu&eacute; lo usamos?</strong></p>\r\n<p>Es un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aqu&iacute;, contenido aqu&iacute;\".</p>\r\n<p>Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a trav&eacute;s de los a&ntilde;os, algunas veces por accidente, otras veces a prop&oacute;sito (por ejemplo insert&aacute;ndole humor y cosas por el estilo).</p>', '404', 'Página no encontrada', 'Es posible que la página que está buscando se haya eliminado o no está disponible temporalmente.', 'Página de inicio', 'CMS Inmobiliario Avanzado', 'plantilla inmobiliaria, tema de agencia inmobiliaria, tema de wordpress agencia inmobiliaria, app ag', '¡La forma MÁS RÁPIDA Y FÁCIL de crear un sitio y una aplicación móvil de alta calidad para su agenci', 'Nuestra Ubicación', 'Envíanos', 'Llámanos', 'Encuentra Tu Espacio Ideal', 'Su propiedad, Nuestra prioridad.', 'Buscar Ahora', 'Mi Perfil', 'Encuentra Tu', 'Casa Perfecta', 'Ciudades', 'Tipo', 'Estado', 'Condiciones', 'Habitaciónes', 'Baños', 'Precio Mín', 'Precio Máx', 'Características', 'Buscar', 'Todos', 'Propiedades', 'Destacadas', 'Destacado', 'Total', 'Ciudades', 'Populares', 'Nuestra misión', 'Mauris ac consectetur ante, dapibus gravida tellus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Contactar', 'Noticias', 'Destacadas', 'Nuestros', 'Valores', 'Mejores ', 'Socios', 'Quienes Somos', 'Una página Acerca de nosotros ayuda a su empresa a dar una buena primera impresión y es fundamental', 'Enlaces Rápidos', 'Información', 'Boletín Informativo', 'Suscríbete', 'Correo Electrónico', '© 2021 CMS Inmobiliario', 'Iniciar Sesión ', 'Hab', 'Hab', 'Baño', 'Baños', 'Garaje', 'Garajes', 'Planta', 'Tamaño:', 'Baños:', 'Habitaciónes:', 'Planta:', 'Tipo:', 'Garajes:', 'Condición:', 'Calificación Energética:', 'Enviar', 'Imprimir', 'Guardar', 'Borrar', 'Compartir', 'Descripción ', 'Detalles', 'Características', 'Video', 'Ubicación', 'Reproducir', 'Propiedades Similares', 'Esta propiedad ha sido vendida', 'Referencia:', 'Solicitar Información ', 'Nombre', 'Correo Electrónico', 'Telefono', 'Fecha', 'Estoy interesado en esta propiedad y me gustaría conocer más detalles.', 'Enviar mensaje', 'Tu mensaje ha sido enviado', 'Su mensaje no pudo ser enviado', 'Calculadora de hipoteca', 'Costo de la casa', 'Depósito', 'Interés', 'Periodo', 'Calcular', 'Mensualidad:', 'Inicio', 'Total Propiedades', 'Resultados', 'Filtrar', 'Búsqueda Avanzada', 'Zonas', 'Área Mín', 'Área Máx', 'Relevancia', 'Precio más alto', 'Precio más bajo', 'Recientes', 'Antiguos', 'Grandes', 'Pequeños', '¡Nada Encontrado!', 'Modifique sus criterios de búsqueda y vuelva a int', 'Página', 'Referencia', 'Ejemplo: 1002', 'Nuestros', 'Clientes', 'Comparte esta propiedad', 'Propiedades', 'Recientes', 'Compartir por email', 'Descuento', 'Descubre Nuestras ', 'Ofertas Especiales', 'Oferta', 'Buscar Publicaciones', 'Buscar...', 'Publicaciones Destacadas', 'Categorías', 'Ofertas', 'Mostrar solo ofertas', 'Leer más', 'Buscar:', 'Compartir', 'Artículos Relacionados', 'Ponerse en contacto', 'Puede utilizar el formulario o simplemente escribi', 'Datos de contacto', 'Descubre cómo ponerte en contacto con nosotros.', 'Nombre', 'Correo Electrónico', 'Telefono', 'Mensaje', 'Estoy de acuerdo con la', 'Enviar mensaje', 'Iniciar Sesión ', 'Correo Electrónico', 'Contraseña', '¿No tienes una cuenta?', '¿Has olvidado tu contraseña?', 'Registrarse', 'Entrar', 'Registrarse', 'Nombre', '¿Ya tienes una cuenta?', 'Iniciar Sesión', 'Estoy de acuerdo con la', 'Restablecer la contraseña', 'Volver', 'El correo electrónico está vacío', 'El nombre está vacío', 'La contraseña está vacía', 'Error de verificación', 'Longitud mínima del nombre es 3', 'El correo electrónico es invalido', 'Longitud de la contraseña 8-32', 'Cuenta ya registrada', 'Usuario no encontrado', 'Correo electrónico de restablecimiento de contrase', 'Algo está mal', 'El mensaje esta vacio', 'El mensaje ha sido enviado', 'El nombre no es válido', 'Cuenta inhabilitada o no encontrada', 'Debes aceptar el Aviso Legal', 'Correo o contraseña incorrectos', 'Tu contraseña ha sido restablecida', 'Las contraseñas no coinciden', 'Ha solicitado demasiados restablecimientos de cont', 'Miembro desde', 'Administración', 'Editar perfil', 'Cerrar Sesión ', 'Mis favoritos', 'No se encontraron favoritos', 'Nueva contraseña', 'Confirmar Contraseña', 'Guardar cambios', 'Cancelar', 'Espere por favor...', 'Te has suscripto satisfactoriamente', 'Tu perfil se actualizó con éxito', 'Tu nombre', 'Tu correo electrónico', 'Correo electrónico de tu amigo', 'Conoce', 'Nuestro Equipo', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_maintenancepage` varchar(100) NOT NULL,
  `tr_maintenancetitle` varchar(100) NOT NULL,
  `tr_maintenancesub` text NOT NULL,
  `tr_profilepage` varchar(50) NOT NULL,
  `tr_signinpage` varchar(50) NOT NULL,
  `tr_signuppage` varchar(50) NOT NULL,
  `tr_resetpage` varchar(50) NOT NULL,
  `tr_forgotpage` varchar(50) NOT NULL,
  `tr_termsandconds` text NOT NULL,
  `tr_aboutus` text NOT NULL,
  `tr_eptitle` varchar(100) NOT NULL,
  `tr_epsubtitle` varchar(100) NOT NULL,
  `tr_eptagline` varchar(150) NOT NULL,
  `tr_epbutton` varchar(50) NOT NULL,
  `tr_1` varchar(100) NOT NULL,
  `tr_2` varchar(100) NOT NULL,
  `tr_3` varchar(100) NOT NULL,
  `tr_4` varchar(100) NOT NULL,
  `tr_5` varchar(100) NOT NULL,
  `tr_6` varchar(100) NOT NULL,
  `tr_7` varchar(100) NOT NULL,
  `tr_8` varchar(100) NOT NULL,
  `tr_9` varchar(100) NOT NULL,
  `tr_10` varchar(100) NOT NULL,
  `tr_11` varchar(100) NOT NULL,
  `tr_12` varchar(100) NOT NULL,
  `tr_13` varchar(100) NOT NULL,
  `tr_14` varchar(100) NOT NULL,
  `tr_15` varchar(100) NOT NULL,
  `tr_16` varchar(100) NOT NULL,
  `tr_17` varchar(100) NOT NULL,
  `tr_18` varchar(100) NOT NULL,
  `tr_19` varchar(100) NOT NULL,
  `tr_20` varchar(100) NOT NULL,
  `tr_21` varchar(100) NOT NULL,
  `tr_22` varchar(100) NOT NULL,
  `tr_23` varchar(100) NOT NULL,
  `tr_24` varchar(100) NOT NULL,
  `tr_25` varchar(100) NOT NULL,
  `tr_26` varchar(100) NOT NULL,
  `tr_27` varchar(100) NOT NULL,
  `tr_28` varchar(100) NOT NULL,
  `tr_29` varchar(100) NOT NULL,
  `tr_30` varchar(100) NOT NULL,
  `tr_31` varchar(255) NOT NULL,
  `tr_32` varchar(255) NOT NULL,
  `tr_33` varchar(100) NOT NULL,
  `tr_34` varchar(100) NOT NULL,
  `tr_35` varchar(100) NOT NULL,
  `tr_36` varchar(100) NOT NULL,
  `tr_37` varchar(100) NOT NULL,
  `tr_38` varchar(100) NOT NULL,
  `tr_39` varchar(100) NOT NULL,
  `tr_40` varchar(100) NOT NULL DEFAULT '-',
  `tr_41` varchar(100) NOT NULL DEFAULT '-',
  `tr_42` varchar(100) NOT NULL DEFAULT '-',
  `tr_43` varchar(100) NOT NULL DEFAULT '-',
  `tr_44` varchar(100) NOT NULL DEFAULT '-',
  `tr_45` varchar(100) NOT NULL DEFAULT '-',
  `tr_46` varchar(100) NOT NULL DEFAULT '-',
  `tr_47` varchar(100) NOT NULL DEFAULT '-',
  `tr_48` varchar(100) NOT NULL DEFAULT '-',
  `tr_49` varchar(100) NOT NULL DEFAULT '-',
  `tr_50` varchar(100) NOT NULL DEFAULT '-',
  `tr_51` varchar(100) NOT NULL DEFAULT '-',
  `tr_52` varchar(100) NOT NULL DEFAULT '-',
  `tr_53` varchar(100) NOT NULL DEFAULT '-',
  `tr_54` varchar(100) NOT NULL DEFAULT '-',
  `tr_55` varchar(100) NOT NULL DEFAULT '-',
  `tr_56` varchar(100) NOT NULL DEFAULT '-',
  `tr_57` varchar(100) NOT NULL DEFAULT '-',
  `tr_58` varchar(100) NOT NULL DEFAULT '-',
  `tr_59` varchar(100) NOT NULL DEFAULT '-',
  `tr_60` varchar(100) NOT NULL DEFAULT '-',
  `tr_61` varchar(100) NOT NULL DEFAULT '-',
  `tr_62` varchar(100) NOT NULL DEFAULT '-',
  `tr_63` varchar(100) NOT NULL DEFAULT '-',
  `tr_64` varchar(100) NOT NULL DEFAULT '-',
  `tr_65` varchar(100) NOT NULL DEFAULT '-',
  `tr_66` varchar(100) NOT NULL DEFAULT '-',
  `tr_67` varchar(100) NOT NULL DEFAULT '-',
  `tr_68` varchar(100) NOT NULL DEFAULT '-',
  `tr_69` varchar(100) NOT NULL DEFAULT '-',
  `tr_70` varchar(100) NOT NULL DEFAULT '-',
  `tr_71` varchar(100) NOT NULL DEFAULT '-',
  `tr_72` varchar(100) NOT NULL DEFAULT '-',
  `tr_73` varchar(100) NOT NULL DEFAULT '-',
  `tr_74` varchar(100) NOT NULL DEFAULT '-',
  `tr_75` varchar(100) NOT NULL DEFAULT '-',
  `tr_76` varchar(100) NOT NULL DEFAULT '-',
  `tr_77` varchar(100) NOT NULL DEFAULT '-',
  `tr_78` varchar(100) NOT NULL DEFAULT '-',
  `tr_79` varchar(100) NOT NULL DEFAULT '-',
  `tr_80` varchar(100) NOT NULL DEFAULT '-',
  `tr_81` varchar(100) NOT NULL DEFAULT '-',
  `tr_82` varchar(100) NOT NULL DEFAULT '-',
  `tr_83` varchar(100) NOT NULL DEFAULT '-',
  `tr_84` varchar(100) NOT NULL DEFAULT '-',
  `tr_85` varchar(100) NOT NULL DEFAULT '-',
  `tr_86` varchar(100) NOT NULL DEFAULT '-',
  `tr_87` varchar(100) NOT NULL DEFAULT '-',
  `tr_88` varchar(100) NOT NULL DEFAULT '-',
  `tr_89` varchar(100) NOT NULL DEFAULT '-',
  `tr_90` varchar(100) NOT NULL DEFAULT '-',
  `tr_91` varchar(100) NOT NULL DEFAULT '-',
  `tr_92` varchar(100) NOT NULL DEFAULT '-',
  `tr_93` varchar(100) NOT NULL DEFAULT '-',
  `tr_94` varchar(100) NOT NULL DEFAULT '-',
  `tr_95` varchar(100) NOT NULL DEFAULT '-',
  `tr_96` varchar(100) NOT NULL DEFAULT '-',
  `tr_97` varchar(100) NOT NULL DEFAULT '-',
  `tr_98` varchar(100) NOT NULL DEFAULT '-',
  `tr_99` varchar(100) NOT NULL DEFAULT '-',
  `tr_100` varchar(100) NOT NULL DEFAULT '-',
  `tr_101` varchar(50) NOT NULL DEFAULT '-',
  `tr_102` varchar(50) NOT NULL DEFAULT '-',
  `tr_103` varchar(50) NOT NULL DEFAULT '-',
  `tr_104` varchar(50) NOT NULL DEFAULT '-',
  `tr_105` varchar(50) NOT NULL DEFAULT '-',
  `tr_106` varchar(50) NOT NULL DEFAULT '-',
  `tr_107` varchar(50) NOT NULL DEFAULT '-',
  `tr_108` varchar(50) NOT NULL DEFAULT '-',
  `tr_109` varchar(50) NOT NULL DEFAULT '-',
  `tr_110` varchar(50) NOT NULL DEFAULT '-',
  `tr_111` varchar(50) NOT NULL DEFAULT '-',
  `tr_112` varchar(50) NOT NULL DEFAULT '-',
  `tr_113` varchar(50) NOT NULL DEFAULT '-',
  `tr_114` varchar(50) NOT NULL DEFAULT '-',
  `tr_115` varchar(50) NOT NULL DEFAULT '-',
  `tr_116` varchar(50) NOT NULL DEFAULT '-',
  `tr_117` varchar(50) NOT NULL DEFAULT '-',
  `tr_118` varchar(50) NOT NULL DEFAULT '-',
  `tr_119` varchar(50) NOT NULL DEFAULT '-',
  `tr_120` varchar(50) NOT NULL DEFAULT '-',
  `tr_121` varchar(50) NOT NULL DEFAULT '-',
  `tr_122` varchar(50) NOT NULL DEFAULT '-',
  `tr_123` varchar(50) NOT NULL DEFAULT '-',
  `tr_124` varchar(50) NOT NULL DEFAULT '-',
  `tr_125` varchar(50) NOT NULL DEFAULT '-',
  `tr_126` varchar(50) NOT NULL DEFAULT '-',
  `tr_127` varchar(50) NOT NULL DEFAULT '-',
  `tr_128` varchar(50) NOT NULL DEFAULT '-',
  `tr_129` varchar(50) NOT NULL DEFAULT '-',
  `tr_130` varchar(50) NOT NULL DEFAULT '-',
  `tr_131` varchar(50) NOT NULL DEFAULT '-',
  `tr_132` varchar(50) NOT NULL DEFAULT '-',
  `tr_133` varchar(50) NOT NULL DEFAULT '-',
  `tr_134` varchar(50) NOT NULL DEFAULT '-',
  `tr_135` varchar(50) NOT NULL DEFAULT '-',
  `tr_136` varchar(50) NOT NULL DEFAULT '-',
  `tr_137` varchar(50) NOT NULL DEFAULT '-',
  `tr_138` varchar(50) NOT NULL DEFAULT '-',
  `tr_139` varchar(50) NOT NULL DEFAULT '-',
  `tr_140` varchar(50) NOT NULL DEFAULT '-',
  `tr_141` varchar(50) NOT NULL DEFAULT '-',
  `tr_142` varchar(50) NOT NULL DEFAULT '-',
  `tr_143` varchar(50) NOT NULL DEFAULT '-',
  `tr_144` varchar(50) NOT NULL DEFAULT '-',
  `tr_145` varchar(50) NOT NULL DEFAULT '-',
  `tr_146` varchar(50) NOT NULL DEFAULT '-',
  `tr_147` varchar(50) NOT NULL DEFAULT '-',
  `tr_148` varchar(50) NOT NULL DEFAULT '-',
  `tr_149` varchar(50) NOT NULL DEFAULT '-',
  `tr_150` varchar(50) NOT NULL DEFAULT '-',
  `tr_151` varchar(50) NOT NULL DEFAULT '-',
  `tr_152` varchar(50) NOT NULL DEFAULT '-',
  `tr_153` varchar(50) NOT NULL DEFAULT '-',
  `tr_154` varchar(50) NOT NULL DEFAULT '-',
  `tr_155` varchar(50) NOT NULL DEFAULT '-',
  `tr_156` varchar(50) NOT NULL DEFAULT '-',
  `tr_157` varchar(50) NOT NULL DEFAULT '-',
  `tr_158` varchar(50) NOT NULL DEFAULT '-',
  `tr_159` varchar(50) NOT NULL DEFAULT '-',
  `tr_160` varchar(50) NOT NULL DEFAULT '-',
  `tr_161` varchar(50) NOT NULL DEFAULT '-',
  `tr_162` varchar(50) NOT NULL DEFAULT '-',
  `tr_163` varchar(50) NOT NULL DEFAULT '-',
  `tr_164` varchar(50) NOT NULL DEFAULT '-',
  `tr_165` varchar(50) NOT NULL DEFAULT '-',
  `tr_166` varchar(50) NOT NULL DEFAULT '-',
  `tr_167` varchar(50) NOT NULL DEFAULT '-',
  `tr_168` varchar(50) NOT NULL DEFAULT '-',
  `tr_169` varchar(50) NOT NULL DEFAULT '-',
  `tr_170` varchar(50) NOT NULL DEFAULT '-',
  `tr_171` varchar(50) NOT NULL DEFAULT '-',
  `tr_172` varchar(50) NOT NULL DEFAULT '-',
  `tr_173` varchar(50) NOT NULL DEFAULT '-',
  `tr_174` varchar(50) NOT NULL DEFAULT '-',
  `tr_175` varchar(50) NOT NULL DEFAULT '-',
  `tr_176` varchar(50) NOT NULL DEFAULT '-',
  `tr_177` varchar(50) NOT NULL DEFAULT '-',
  `tr_178` varchar(50) NOT NULL DEFAULT '-',
  `tr_179` varchar(50) NOT NULL DEFAULT '-',
  `tr_180` varchar(50) NOT NULL DEFAULT '-',
  `tr_181` varchar(50) NOT NULL DEFAULT '-',
  `tr_182` varchar(50) NOT NULL DEFAULT '-',
  `tr_183` varchar(50) NOT NULL DEFAULT '-',
  `tr_184` varchar(50) NOT NULL DEFAULT '-',
  `tr_185` varchar(50) NOT NULL DEFAULT '-',
  `tr_186` varchar(50) NOT NULL DEFAULT '-',
  `tr_187` varchar(50) NOT NULL DEFAULT '-',
  `tr_188` varchar(50) NOT NULL DEFAULT '-',
  `tr_189` varchar(50) NOT NULL DEFAULT '-',
  `tr_190` varchar(50) NOT NULL DEFAULT '-',
  `tr_191` varchar(50) NOT NULL DEFAULT '-',
  `tr_192` varchar(50) NOT NULL DEFAULT '-',
  `tr_193` varchar(50) NOT NULL DEFAULT '-',
  `tr_194` varchar(50) NOT NULL DEFAULT '-',
  `tr_195` varchar(50) NOT NULL DEFAULT '-',
  `tr_196` varchar(50) NOT NULL DEFAULT '-',
  `tr_197` varchar(50) NOT NULL DEFAULT '-',
  `tr_198` varchar(50) NOT NULL DEFAULT '-',
  `tr_199` varchar(50) NOT NULL DEFAULT '-',
  `tr_200` varchar(50) NOT NULL DEFAULT '-',
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`tr_id`, `tr_maintenancepage`, `tr_maintenancetitle`, `tr_maintenancesub`, `tr_profilepage`, `tr_signinpage`, `tr_signuppage`, `tr_resetpage`, `tr_forgotpage`, `tr_termsandconds`, `tr_aboutus`, `tr_eptitle`, `tr_epsubtitle`, `tr_eptagline`, `tr_epbutton`, `tr_1`, `tr_2`, `tr_3`, `tr_4`, `tr_5`, `tr_6`, `tr_7`, `tr_8`, `tr_9`, `tr_10`, `tr_11`, `tr_12`, `tr_13`, `tr_14`, `tr_15`, `tr_16`, `tr_17`, `tr_18`, `tr_19`, `tr_20`, `tr_21`, `tr_22`, `tr_23`, `tr_24`, `tr_25`, `tr_26`, `tr_27`, `tr_28`, `tr_29`, `tr_30`, `tr_31`, `tr_32`, `tr_33`, `tr_34`, `tr_35`, `tr_36`, `tr_37`, `tr_38`, `tr_39`, `tr_40`, `tr_41`, `tr_42`, `tr_43`, `tr_44`, `tr_45`, `tr_46`, `tr_47`, `tr_48`, `tr_49`, `tr_50`, `tr_51`, `tr_52`, `tr_53`, `tr_54`, `tr_55`, `tr_56`, `tr_57`, `tr_58`, `tr_59`, `tr_60`, `tr_61`, `tr_62`, `tr_63`, `tr_64`, `tr_65`, `tr_66`, `tr_67`, `tr_68`, `tr_69`, `tr_70`, `tr_71`, `tr_72`, `tr_73`, `tr_74`, `tr_75`, `tr_76`, `tr_77`, `tr_78`, `tr_79`, `tr_80`, `tr_81`, `tr_82`, `tr_83`, `tr_84`, `tr_85`, `tr_86`, `tr_87`, `tr_88`, `tr_89`, `tr_90`, `tr_91`, `tr_92`, `tr_93`, `tr_94`, `tr_95`, `tr_96`, `tr_97`, `tr_98`, `tr_99`, `tr_100`, `tr_101`, `tr_102`, `tr_103`, `tr_104`, `tr_105`, `tr_106`, `tr_107`, `tr_108`, `tr_109`, `tr_110`, `tr_111`, `tr_112`, `tr_113`, `tr_114`, `tr_115`, `tr_116`, `tr_117`, `tr_118`, `tr_119`, `tr_120`, `tr_121`, `tr_122`, `tr_123`, `tr_124`, `tr_125`, `tr_126`, `tr_127`, `tr_128`, `tr_129`, `tr_130`, `tr_131`, `tr_132`, `tr_133`, `tr_134`, `tr_135`, `tr_136`, `tr_137`, `tr_138`, `tr_139`, `tr_140`, `tr_141`, `tr_142`, `tr_143`, `tr_144`, `tr_145`, `tr_146`, `tr_147`, `tr_148`, `tr_149`, `tr_150`, `tr_151`, `tr_152`, `tr_153`, `tr_154`, `tr_155`, `tr_156`, `tr_157`, `tr_158`, `tr_159`, `tr_160`, `tr_161`, `tr_162`, `tr_163`, `tr_164`, `tr_165`, `tr_166`, `tr_167`, `tr_168`, `tr_169`, `tr_170`, `tr_171`, `tr_172`, `tr_173`, `tr_174`, `tr_175`, `tr_176`, `tr_177`, `tr_178`, `tr_179`, `tr_180`, `tr_181`, `tr_182`, `tr_183`, `tr_184`, `tr_185`, `tr_186`, `tr_187`, `tr_188`, `tr_189`, `tr_190`, `tr_191`, `tr_192`, `tr_193`, `tr_194`, `tr_195`, `tr_196`, `tr_197`, `tr_198`, `tr_199`, `tr_200`) VALUES
(1, 'Under Maintenance', 'Website Under Maintenance', 'Sorry for the inconvenience but we’re performing some maintenance at the moment.', 'Profile', 'Sign In', 'Sign Up', 'Reset Password', 'Forgot Password', '<p><strong>Terms &amp; Conditions</strong></p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Why do we use it?</strong></p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p><strong>About Us</strong></p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Why do we use it?</strong></p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '404', 'Page Not Found', 'The page you are looking for might have been removed had it\'s name changed or is temporarily unavailable.', 'Home Page', 'Real Estate CMS', 'real estate template, real estate agency theme, wordpress theme real estate, mobile app real estate,', 'The FASTEST & EASIEST Way to Getting High-Quality Site & Mobile App For Your Agency!', 'Our Location', 'Email Us', 'Call Us', 'Discover The Best Houses', 'Your Property, Our Priority.', 'Discover Now', 'View Profile', 'Find Your', 'Perfect Home', 'Cities', 'Types', 'Status', 'Conditions', 'Bedrooms', 'Bathrooms', 'Min Price', 'Max Price', 'Other Features', 'Search', 'Any', 'Featured', 'Properties', 'Featured', 'Total', 'Featured', 'Popular Cities', 'Our Mission', 'Mauris ac consectetur ante, dapibus gravida tellus.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Get a Quote', 'Our Blog', 'News & Articles', 'What Makes Us', 'Preferred Choice', 'Our Best', 'Partners', 'About Us', 'An About Us page helps your company make a good first impression, and is critical for building custo', 'Quick Links', 'Get In Touch', 'Newsletter', 'Suscribe Now', 'Email Address', '© 2021 Real Estate Real Estate CMS', 'Sign In', 'Bed', 'Beds', 'Bath', 'Baths', 'Garage', 'Garages', 'Floor', 'Size:', 'Bathrooms:', 'Bedrooms:', 'Floor:', 'Type:', 'Garages:', 'Condition:', 'Energy Rating:', 'Email', 'Print', 'Favorite', 'Unfavorite', 'Share', 'Property Description', 'Property Details', 'Property Features', 'Property Video', 'Property Location', 'Play Video', 'Similar Properties', 'This property has been sold', 'Property Reference:', 'Make An Appoinment', 'Name', 'Email', 'Phone', 'Date', 'I\'m interested in this property and I\'d like to know more details.', 'Send Message', 'Your message has been sent', 'Your message could not be sent', 'Mortgage Calculator', 'Cost of House', 'Down Payment', 'APR (Interest)', 'Period (How Long)', 'Calculate', 'Montly Payment:', 'Home', 'Total Properties', 'Results', 'Filter', 'Advanced Search', 'Zones', 'Min Area', 'Max Area', 'Default', 'Price High to Low', 'Price Low to High', 'Date New to Old', 'Date Old to New', 'Size Largest to Lowest', 'Size Lowest to Largest', 'Nothing found!', 'Modify your search criteria and try again.', 'Page', 'Reference', 'Example: 1002', 'Our Client', 'Testimonials', 'Share this property', 'Latest', 'Properties', 'Send this property', 'Save', 'Discover Our', 'Special Offers', 'Offer', 'Search Posts', 'Search...', 'Featured Posts', 'Categories', 'Offers', 'Show Offers', 'Read More', 'Search For:', 'Share Post', 'Related Posts', 'Get In Touch', 'You can use the form or just write us an email', 'Contact Info', 'Find out how to get in touch with us', 'Name', 'Email', 'Phone', 'Message', 'I Agree to the', 'Send Message', 'Sign In', 'Email', 'Password', 'Don\'t you have an account?', 'Forgot Password?', 'Sign Up', 'Enter', 'Sign Up', 'Name', 'Already have an account?', 'Sign In', 'I Agree to the', 'Reset Password', 'Back to Sign In', 'Email is Empty', 'Name is Empty', 'Password is Empty', 'Captcha Check Failed', 'Minimum Name Length 3', 'Email is Invalid', 'Password Length 8-32', 'Account Already Registered', 'No User Found', 'Password Reset Email Sent', 'Something Wrong', 'Message is empty', 'Message Has Been Sent', 'Name is Invalid', 'Account Disabled or Not Found', 'You must accept the Legal Notice', 'Incorrect Email or Password', 'Your password has been reset', 'Password does not match', 'You have requested too many password resets.', 'Member Since', 'Admin Area', 'Edit Profile', 'Sign Out', 'My Favorites', 'No Favorites Found', 'New Password', 'Confirm Password', 'Save Changes', 'Cancel', 'Please wait...', 'You have successfully subscribed', 'Your profile was successfully updated', 'Your Name', 'Your Email', 'Friend Email', 'Meet', 'Our Team', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tr_categories`
--

DROP TABLE IF EXISTS `tr_categories`;
CREATE TABLE IF NOT EXISTS `tr_categories` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_category` int(11) NOT NULL,
  `tr_lang` varchar(10) NOT NULL,
  `tr_slug` varchar(100) NOT NULL,
  `tr_name` varchar(100) NOT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tr_pages`
--

DROP TABLE IF EXISTS `tr_pages`;
CREATE TABLE IF NOT EXISTS `tr_pages` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_page` int(11) NOT NULL,
  `tr_lang` varchar(11) NOT NULL,
  `tr_slug` varchar(100) NOT NULL,
  `tr_title` varchar(100) NOT NULL,
  `tr_content` text NOT NULL,
  `tr_seodescription` text NOT NULL,
  `tr_seotitle` varchar(100) NOT NULL,
  PRIMARY KEY (`tr_id`),
  UNIQUE KEY `tr_slug` (`tr_slug`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tr_pages`
--

INSERT INTO `tr_pages` (`tr_id`, `tr_page`, `tr_lang`, `tr_slug`, `tr_title`, `tr_content`, `tr_seodescription`, `tr_seotitle`) VALUES
(2, 2, 'en', 'properties', 'All Properties', '', '', ''),
(3, 3, 'en', 'search', 'Search', '', '', ''),
(4, 4, 'en', 'contact-us', 'Contact Us', '', '', ''),
(5, 5, 'en', 'blog', 'Blog', '', '', ''),
(6, 6, 'en', 'privacy-policy', 'Privacy Policy', '', '', ''),
(7, 7, 'en', 'terms-conditions', 'Terms & Conditions', '', '', ''),
(8, 8, 'en', 'legal-check', 'Legal Check', '<p class=\"p1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\"><strong>Legal Check:</strong></p>\r\n<p class=\"p1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">&nbsp;</p>\r\n<p class=\"p1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">The A1Lands Legal Check service is designed to assist buyers in evaluating any property, regardless of whether it is listed on A1Lands.com. Our team follows a comprehensive step-by-step process that ensures every legal aspect of the property is thoroughly reviewed.</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times; min-height: 14px;\">&nbsp;</p>\r\n<ul class=\"ul1\">\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Submit Property Documents: The buyer submits the necessary property documents for legal review.</li>\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">21 Key Checkpoints: Our experts run the property through 21 essential legal checkpoints, including:</li>\r\n</ul>\r\n<ul class=\"ul1\">\r\n<ul class=\"ul1\" style=\"list-style-type: disc;\">\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Title authenticity and ownership verification</li>\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Encumbrance checks for existing loans or legal disputes</li>\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Verification of government approvals and permits</li>\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Land use and zoning regulations</li>\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Examination of property tax payments</li>\r\n</ul>\r\n</ul>\r\n<ul class=\"ul1\">\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Clear Report: After the evaluation, we provide a clear, easy-to-understand report detailing the legal status of the property, outlining any risks or concerns.</li>\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Expert Recommendations: Our team provides recommendations for the next steps, ensuring that buyers are fully aware of any potential red flags.</li>\r\n</ul>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times; min-height: 14px;\">&nbsp;</p>\r\n<p class=\"p1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">This thorough legal check ensures buyers are fully informed and protected before proceeding with a purchase.</p>', 'Legal Check', 'Legal Check'),
(9, 9, 'en', 'verified-properties', 'Verified Properties', '<p class=\"p1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\"><strong>Verified Properties:</strong></p>\r\n<p class=\"p1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">&nbsp;</p>\r\n<p class=\"p1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">At A1Lands, we ensure that every property listed on our platform goes through a stringent verification process. This process allows potential buyers to browse and invest in properties with complete peace of mind, knowing that all documents and legalities have been thoroughly vetted by our experts.</p>\r\n<ul class=\"ul1\">\r\n<ul class=\"ul1\" style=\"list-style-type: disc;\">\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Property Seller Association: A1Lands associates with property sellers to ensure the authenticity and accuracy of every listing.</li>\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Document Verification: Our legal experts examine all relevant property documents, including title deeds, encumbrance certificates, tax receipts, and more.</li>\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Detailed Property Listing: Once the documents are verified, properties are listed on A1Lands.com with a comprehensive description, highlighting key details such as location, size, price, and any unique selling points.</li>\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Contact the Seller: Interested buyers can directly reach out to property or landowners through the platform, with the confidence that all legal checks have already been done.</li>\r\n</ul>\r\n</ul>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times; min-height: 14px;\">&nbsp;</p>\r\n<p class=\"p1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">This approach helps to minimize the risks associated with property transactions and creates a safer environment for buyers.</p>', 'Verified Properties', 'Verified Properties'),
(10, 10, 'en', 'legal-documentation', 'Legal Documentation', '<p class=\"p1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\"><strong>Legal Documentation:</strong></p>\r\n<p class=\"p1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">&nbsp;</p>\r\n<p class=\"p1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">A1Lands simplifies the complex process of property transactions by offering complete legal documentation services. Our team handles all aspects of paperwork, from drafting agreements to final registration, ensuring a smooth and hassle-free experience for buyers.</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times; min-height: 14px;\">&nbsp;</p>\r\n<ul class=\"ul1\">\r\n<ul class=\"ul1\" style=\"list-style-type: disc;\">\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Drafting Agreements: We prepare legally binding sale agreements, ensuring all clauses protect the buyer&rsquo;s interests.</li>\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Coordination with Authorities: Our team manages interactions with legal authorities and government departments to ensure compliance with all regulations.</li>\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Payment Documentation: We prepare and verify payment receipts and documentation to ensure transparency in financial transactions.</li>\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Property Registration: We facilitate the registration process, ensuring all legal formalities are completed and the property is officially transferred to the buyer&rsquo;s name.</li>\r\n</ul>\r\n</ul>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times; min-height: 14px;\">&nbsp;</p>\r\n<p class=\"p1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">By taking care of all the documentation, we ensure that buyers can focus on their investment while we handle the legal complexities.</p>', 'Legal Documentation', 'Legal Documentation'),
(11, 11, 'en', 'legal-desk', 'Legal Desk', '<p class=\"p1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\"><strong>Legal Desk:</strong></p>\r\n<p class=\"p1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">&nbsp;</p>\r\n<p class=\"p1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">The A1Lands Legal Desk is a dedicated support service designed to help users with any queries related to property or land transactions. Our group of legal experts is available to provide insights, clarify doubts, and assist users at every stage of the purchase process.</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times; min-height: 14px;\">&nbsp;</p>\r\n<ul class=\"ul1\">\r\n<ul class=\"ul1\" style=\"list-style-type: disc;\">\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Expert Guidance: Get access to top legal professionals who specialize in real estate law.</li>\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Clarification on Laws: Understand property laws, land regulations, and legal formalities with expert assistance.</li>\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Customized Support: Whether you have general queries about property purchases or need advice on specific legal matters, our Legal Desk is here to assist.</li>\r\n<li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Available Anytime: Our experts are available to provide real-time support through chat, email, or phone, ensuring you get the help you need when you need it.</li>\r\n</ul>\r\n</ul>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times; min-height: 14px;\">&nbsp;</p>\r\n<p class=\"p1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">The Legal Desk offers a valuable resource for anyone looking to navigate the complexities of property laws with confidence.</p>', 'Legal Desk', 'Legal Desk'),
(15, 15, 'en', 'specialproperties', 'Premium Lands', '', '', ''),
(16, 16, 'en', 'shorlistproperties', 'Shortlisted', '', '', ''),
(12, 12, 'en', 'investment-insights', 'Investment Insights', '<p class=\"p1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: \'Helvetica Neue\';\">&nbsp;</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\"><strong>The Best Places to Invest in Real Estate</strong></p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Real estate continues to be one of the most popular and profitable forms of investment. With the potential for steady income, long-term appreciation, and significant returns, choosing the right location is key to maximizing your investment. At A1Lands, we help you identify some of the best hotspots to consider when investing in real estate.</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\"><strong>Growing Cities</strong></p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Cities experiencing rapid growth and development offer promising opportunities for real estate investment. Increased demand for housing, rising property prices, and ongoing urban expansion can provide substantial returns.</p>\r\n<ul class=\"ul1\">\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">High Demand for Housing: Growing cities see a surge in housing needs, which leads to increased property values.</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Development Opportunities: Expansion often brings opportunities for new construction and redevelopment projects.</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Economic Growth: Thriving job markets and infrastructure improvements further drive the real estate market in these areas.</li>\r\n</ul>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\"><strong>Tourist Destinations</strong></p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Tourist hotspots are prime locations for real estate investment. Properties in these areas enjoy high demand, especially during peak tourist seasons, making them ideal for vacation rentals or resale opportunities.</p>\r\n<ul class=\"ul1\">\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Rental Income: Vacation homes in popular tourist destinations generate steady rental income during holiday seasons.</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">High Demand: Tourist locations often attract both local and international buyers, ensuring continued interest in the property.</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Resale Value: Properties in sought-after vacation spots tend to appreciate in value, offering strong potential for resale profits.</li>\r\n</ul>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\"><strong>College Towns</strong></p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Investing in college towns can be a smart strategy due to the consistent demand for housing driven by the student population. With a reliable rental market and ongoing demand, these towns provide stability for investors.</p>\r\n<ul class=\"ul1\">\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Steady Rental Demand: College students and faculty create a constant need for rental properties.</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Future Growth: As students graduate and settle down in these areas, demand for both rentals and homes for purchase remains strong.</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Affordable Entry Point: Real estate in college towns often comes with lower initial costs, providing an affordable entry into the market.</li>\r\n</ul>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\"><strong>Up-and-Coming Neighborhoods</strong></p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Investing in emerging neighborhoods that are undergoing revitalization can offer significant upside potential. As these areas improve, property values often rise, making them ideal for investors looking for long-term gains.</p>\r\n<ul class=\"ul1\">\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Early Investment Advantage: Buying into a neighborhood before it becomes fully developed can lead to high returns as property values appreciate.</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">New Amenities: Revitalizing areas often see an influx of new businesses, infrastructure, and community improvements.</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Rising Property Values: As the neighborhood grows in popularity, so do the property values, offering a lucrative investment opportunity.</li>\r\n</ul>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\"><strong>Conclusion</strong></p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">The real estate market offers a variety of excellent investment opportunities. Whether you\'re looking to invest in a growing city, a tourist destination, a college town, or an up-and-coming neighborhood, there are plenty of hotspots that can provide strong returns. At A1Lands, we help you research and select the best locations to maximize your real estate investment and achieve your financial goals.</p>\r\n<p class=\"p3\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times; min-height: 14px;\">&nbsp;</p>\r\n<p class=\"p3\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times; min-height: 14px;\">&nbsp;</p>', 'Investment Insights', 'Investment Insights');
INSERT INTO `tr_pages` (`tr_id`, `tr_page`, `tr_lang`, `tr_slug`, `tr_title`, `tr_content`, `tr_seodescription`, `tr_seotitle`) VALUES
(13, 13, 'en', 'legal-title-check', 'Legal Title Check', '<p class=\"p1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: \'Helvetica Neue\';\">&nbsp;</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\"><strong>Legal Title Check:</strong></p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">A legal title check is a critical step in the process of purchasing a property. At A1Lands, we ensure that buyers can proceed with confidence by conducting a thorough title search, which helps confirm that the seller has the legal right to sell and that there are no unresolved legal claims against the property.</p>\r\n<ul class=\"ul1\">\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Verify Ownership: The title check ensures that the person selling the property has the legal right to do so.</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Identify Legal Claims: It helps uncover any existing legal claims, liens, or disputes over ownership that could affect the property.</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Avoid Future Issues: Conducting a title check early can help avoid potential legal complications, such as:</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Ownership disputes</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Encumbrances or unresolved debts attached to the property</li>\r\n</ul>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\"><strong>How the Title Check Process Works:</strong></p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">The title check process at A1Lands involves a thorough examination of public records and legal documents related to the property. Our experts review:</p>\r\n<ul class=\"ul1\">\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Public Records: Historical data and ownership transfers to ensure the property has a clear chain of title.</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Legal Documents: Contracts, permits, and records to check for any liens, encumbrances, or restrictions on the property.</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Potential Legal Issues: Identify any red flags such as unpaid taxes, unresolved mortgages, or legal disputes that could affect the property&rsquo;s ownership or use.</li>\r\n</ul>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\"><strong>Why a Title Check is Important:</strong></p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">A title check offers crucial protection for your investment by identifying any legal issues that need to be resolved before the purchase.</p>\r\n<ul class=\"ul1\">\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Protect Your Investment: Any problems found during the title check can be addressed before completing the transaction, preventing costly legal disputes later on.</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Save Time and Money: Identifying potential issues early helps avoid delays and additional expenses during the closing process.</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Peace of Mind: A title check gives you confidence that the property is free of legal issues, ensuring a smooth and secure property transaction.</li>\r\n</ul>\r\n<p class=\"p3\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times; min-height: 14px;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\"><strong>Work with A1Lands for a Comprehensive Title Check:</strong></p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">At A1Lands, we provide a thorough and detailed title check to ensure that your property purchase is secure. Our experienced team of legal experts will ensure that every aspect of the title is reviewed, protecting your investment and giving you peace of mind.</p>\r\n<p class=\"p3\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times; min-height: 14px;\">&nbsp;</p>\r\n<p class=\"p3\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times; min-height: 14px;\">&nbsp;</p>', 'Legal Title Check', 'Legal Title Check'),
(14, 14, 'en', 'property-valuation', 'Property Valuation', '<p class=\"p1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: \'Helvetica Neue\';\">&nbsp;</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\"><strong>Property Valuation:</strong></p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Property valuation is a fundamental part of the real estate process, providing essential insights into the market value of a property. Whether you are buying, selling, or renting, understanding the value of a property is crucial to making well-informed decisions.</p>\r\n<p class=\"p3\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times; min-height: 14px;\">&nbsp;</p>\r\n<ul class=\"ul1\">\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Definition: Property valuation is the process of estimating the market value of a property. This is determined by considering various factors such as:</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Location of the property</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Property size and condition</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Market value of similar properties in the area</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Valuation Report: A property valuation report provides an estimated value based on a detailed analysis of these factors, giving buyers and sellers a reliable understanding of the property&rsquo;s worth.</li>\r\n</ul>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\"><strong>Why is Property Valuation Important?</strong></p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Property valuation plays a key role for all parties involved in a real estate transaction, whether you&rsquo;re a buyer, seller, or lender.</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">For Buyers:</p>\r\n<ul class=\"ul1\">\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Helps determine if the asking price is reasonable.</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Provides assurance that the property is worth the investment.</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">For Sellers:</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Enables setting an accurate and competitive asking price.</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Helps sell the property more quickly and at a fair price.</li>\r\n</ul>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">For Lenders:</p>\r\n<ul class=\"ul1\">\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Used to determine the loan-to-value ratio when approving mortgage loans.</li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Ensures that the loan amount does not exceed the value of the property, mitigating financial risk.</li>\r\n</ul>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\"><strong>How is Property Valuation Performed?</strong></p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Property valuation is carried out by licensed professionals using various methods to determine an accurate market value. Common valuation methods include:</p>\r\n<ul class=\"ul1\">\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Comparable Sales Method:</li>\r\n</ul>\r\n<ul class=\"ul1\">\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Compares the property with similar properties that have recently sold in the same area.</li>\r\n</ul>\r\n<ul class=\"ul1\">\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Cost Approach:</li>\r\n</ul>\r\n<ul class=\"ul1\">\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Estimates the cost of building a similar property from scratch and subtracts any depreciation to arrive at the property value.</li>\r\n</ul>\r\n<ul class=\"ul1\">\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Income Capitalization Method:</li>\r\n</ul>\r\n<ul class=\"ul1\">\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Used for rental or income-generating properties like apartments or commercial buildings.<br /><br /></li>\r\n<li class=\"li2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">Involves estimating the property&rsquo;s potential rental income and capitalizing it to determine the value.</li>\r\n</ul>\r\n<p class=\"p3\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times; min-height: 14px;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times;\">A professional valuer typically uses a combination of these methods to ensure a comprehensive and accurate valuation.</p>\r\n<p class=\"p3\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Times; min-height: 14px;\">&nbsp;</p>', 'Property Valuation', 'Property Valuation');

-- --------------------------------------------------------

--
-- Table structure for table `tr_posts`
--

DROP TABLE IF EXISTS `tr_posts`;
CREATE TABLE IF NOT EXISTS `tr_posts` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_post` int(11) NOT NULL,
  `tr_lang` varchar(10) NOT NULL,
  `tr_slug` varchar(100) NOT NULL,
  `tr_title` varchar(100) NOT NULL,
  `tr_content` text NOT NULL,
  `tr_seotitle` varchar(100) NOT NULL,
  `tr_seodescription` text NOT NULL,
  PRIMARY KEY (`tr_id`),
  UNIQUE KEY `tr_slug` (`tr_slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tr_preferred_choice`
--

DROP TABLE IF EXISTS `tr_preferred_choice`;
CREATE TABLE IF NOT EXISTS `tr_preferred_choice` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_pc` int(11) NOT NULL,
  `tr_lang` varchar(10) NOT NULL,
  `tr_title` varchar(100) NOT NULL,
  `tr_content` text NOT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tr_properties`
--

DROP TABLE IF EXISTS `tr_properties`;
CREATE TABLE IF NOT EXISTS `tr_properties` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_property` int(11) NOT NULL,
  `tr_title` varchar(100) NOT NULL,
  `tr_lang` varchar(10) NOT NULL,
  `tr_slug` varchar(100) NOT NULL,
  `tr_description` text NOT NULL,
  `tr_label` varchar(100) NOT NULL,
  PRIMARY KEY (`tr_id`),
  UNIQUE KEY `tr_slug` (`tr_slug`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tr_properties`
--

INSERT INTO `tr_properties` (`tr_id`, `tr_property`, `tr_title`, `tr_lang`, `tr_slug`, `tr_description`, `tr_label`) VALUES
(1, 1, '1 Acre 39 Guntas of verified land in Yadadri Bhuvanagiri district for sale at ₹ 36 lakhs per acre', 'en', '1-acre-39-guntas-of-verified-land-in-yadadri-bhuvanagiri-district-for-sale-at-36-lakhs-per-acre', 'Approach road\r\n15 ft kacha road\r\nDistance From ORR\r\n73 km\r\nDirection\r\nvijayawada highway\r\nwarangal highway\r\nSoil type\r\nRed\r\nCrop/Plantation\r\nPaddy', ''),
(2, 2, 'Single Owner 500Sq Yards Open Plot Near Hyderabad Airport', 'en', 'single-owner-500sq-yards-open-plot-near-hyderabad-airport', 'Single Owner 500Sq Yards Open Plot Near Hyderabad AirportSingle Owner 500Sq Yards Open Plot Near Hyderabad AirportSingle Owner 500Sq Yards Open Plot Near Hyderabad AirportSingle Owner 500Sq Yards Open Plot Near Hyderabad AirportSingle Owner 500Sq Yards Open Plot Near Hyderabad AirportSingle Owner 500Sq Yards Open Plot Near Hyderabad AirportSingle Owner 500Sq Yards Open Plot Near Hyderabad Airport', ''),
(3, 3, 'Modi eius voluptatem', 'en', 'modi-eius-voluptatem', 'Voluptas voluptatem', ''),
(4, 4, '21guntas Open Land (A10001)', 'en', '21guntas-open-land', '- Approach Road: BT Road\r\n- Distance from ORR: 12 KM\r\n- Road Width: 33 Feet\r\n- Route: Maheshwaram Route\r\n- Soil Type: Red Soil\r\n- Zone: R1\r\n', ''),
(11, 11, '1060 SQ YARDS', 'en', '1060-sq-yards', '', ''),
(14, 14, '267 SQ.YD', 'en', '267-sq-yd', '', ''),
(5, 5, '2ACRES 20 GUNTHAS (A10002)', 'en', '2acres-20-gunthas-a10002', '-  APPROACH ROAD : CC ROAD\r\n-  DISTANCE FROM ORR: 14KM\r\n-  ROAD\r\n-  ROUTE: MAHESHWARAM ROUTE\r\n-  SOIL TYPE: RED SOIL\r\n-  ELECTRICITY: AVAILABLE\r\n-  CROP/PLANTATION:FARM LAND\r\n-  ZONE : CONSERVATION\r\n-  BORE/WELL: BORE\r\n-  BUILDING : YES\r\n-FENCING: THIS LAND IS SURROUNDED BY BARBED WIRE FENCING ALONG ITS BOUNDARY.', ''),
(6, 6, '9 ACRES 34 GUNTHAS (A10004)', 'en', '9-acres-34-gunthas-a10004', '-  APPROACH ROAD : BT ROAD\r\n-  DISTANCE FROM ORR : 84KM\r\n-  ROAD : 100FT ROAD\r\n-  ROUTE : SHANKARPALLY ROAD,CHEVELLA HIGHWAY\r\n-  SOIL TYPE : BLACK SOIL\r\n-  ELECTRICITY :  Available\r\n-  ZONE : FREE ZONE\r\n', ''),
(18, 18, '2420SQYD', 'en', '2420sqyd', '', ''),
(19, 19, '600SQYD', 'en', '600sqyd', '', ''),
(7, 7, '14 ACRES 24 GUNTHAS (A10005)', 'en', '14-acres-24-gunthas', '-  APPROACH ROAD : BT ROAD\r\n-  DISTANCE FROM ORR : 84KM\r\n-  ROAD : 100FT ROAD\r\n-  ROUTE :  SHANKARPALLY ROAD, CHEVELLA HIGHWAY\r\n-  SOIL TYPE : BLACK SOIL\r\n-  ELECTRICITY : AVAILABLE\r\n-  ZONE : FREE ZONE\r\n-  FENCING : AVAILABLE\r\n', ''),
(16, 16, '33 ACRES', 'en', '33-acres', '', ''),
(31, 31, '2bhk flat in kompally', 'en', '2bhk-flat-in-kompally', 'yes yes yes yes', ''),
(8, 8, '16 ACRES.01 GUNTHAS (A10006) for 8.81Cr', 'en', '16-acres-01-gunthas-a10006', '-  APPROACH ROAD : BT ROAD\r\n-  DISTANCE FROM ORR : 69KM\r\n-  ROAD : 100FT ROAD\r\n-  ROUTE :  SHANKARPALLY ROAD, CHEVELLA HIGHWAY\r\n-  SOIL TYPE : BLACK SOIL\r\n-  ELECTRICITY : YES\r\n-  ZONE : FREE ZONE\r\n-  FENCING : YES\r\n', ''),
(15, 15, '2 ACRES', 'en', '2-acres', '', ''),
(9, 9, '9 ACRES.32 GUNTHAS (A10007)', 'en', '9-acres-32-gunthas', ' : -  APPROACH ROAD : BT ROAD\r\n : -  DISTANCE FROM ORR : 84KM\r\n : -  ROAD : 100FT ROAD\r\n : -  ROUTE :  SHANKARPALLY ROAD, CHEVELLA HIGHWAY\r\n : -  SOIL TYPE : BLACK SOIL\r\n : -  ELECTRICITY : YES\r\n : -  ZONE : FREE ZONE\r\n : -  FENCING : YES\r\n', ''),
(10, 10, '5 ACRES.24 GUNTHAS (A10008)', 'en', '5-acres-24-gunthas', ' : -  APPROACH ROAD : BT ROAD\r\n\r\n : -  DISTANCE FROM ORR : 50KM\r\n\r\n : -  ROAD : 15 FT ROAD\r\n\r\n : -  ROUTE :  SHANKARPALLY ROAD, CHEVELLA HIGHWAY\r\n\r\n : -  SOIL TYPE : RED SOIL\r\n\r\n : -  ZONE : FREE ZONE\r\n', ''),
(13, 13, '5 Acres 25 Guntas', 'en', '5-acres-25-guntas', '', '0'),
(12, 12, '1 ACRE 35 GUNTHAS (A10003)', 'en', '1-acre-35-gunthas', 'APPROACH ROAD : BT ROAD\r\nDISTANCE FROM ORR :  12 KM\r\nROUTE : MAHESHWARAM\r\nROAD: 33FT ROAD\r\nSOIL TYPE : RED SOIL\r\nZONE : R1\r\n', ''),
(20, 20, '160SQYD', 'en', '160sqyd', '', ''),
(21, 21, '400SQYD', 'en', '400sqyd', '', ''),
(22, 22, '534SQYD', 'en', '534sqyd', '', ''),
(23, 23, '211 SQYD', 'en', '211-sqyd', '', ''),
(24, 24, '300SQYD', 'en', '300sqyd', '', ''),
(25, 25, '400SQYD', 'en', '400sqyd-2', '', ''),
(26, 26, '200SQYD', 'en', '200sqyd', '', ''),
(27, 27, '327SQYD', 'en', '327sqyd', '', ''),
(28, 28, '231SQYD', 'en', '231sqyd', '', ''),
(29, 29, '238SQYD', 'en', '238sqyd', '', ''),
(30, 30, '1110SQYD', 'en', '1110sqyd', '', ''),
(32, 32, 'Verified Properties 124', 'en', 'verified-properties', 'sdadassa 123', 'Monthly'),
(33, 33, '4 acers ', 'en', '4-acers', '', ''),
(34, 34, '5 Acres Land Road Side', 'en', '5-acres-land-road-side', '5 Acres Road Side Land for sale near Medchal', ''),
(35, 35, 'Open Plot 300 Sq yard', 'en', 'open-plot-300-sq-yard', '300 Sqr Yard Open Plot near Vansatalipural', ''),
(36, 36, 'Test Land         ', 'en', 'test-land', 'Test land', ''),
(37, 37, '4 acers ', 'en', '4-acers-2', '', ''),
(38, 38, 'Single Owner 500Sq Yards Open Plot Near Hyderabad Airport', 'en', 'single-owner-500sq-yards-open-plot-near-hyderabad-airport-2', 'test description test descriptiontest descriptiontest descriptiontest descriptiontest descriptiontest description', ''),
(40, 40, '1156SFT', 'en', '1-acre-26-gunthas', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tr_ptcities`
--

DROP TABLE IF EXISTS `tr_ptcities`;
CREATE TABLE IF NOT EXISTS `tr_ptcities` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_city` int(11) NOT NULL,
  `tr_lang` varchar(10) NOT NULL,
  `tr_slug` varchar(100) NOT NULL,
  `tr_name` varchar(100) NOT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tr_ptcities`
--

INSERT INTO `tr_ptcities` (`tr_id`, `tr_city`, `tr_lang`, `tr_slug`, `tr_name`) VALUES
(2, 2, 'en', 'visakhapatnam', 'Telangana');

-- --------------------------------------------------------

--
-- Table structure for table `tr_ptconditions`
--

DROP TABLE IF EXISTS `tr_ptconditions`;
CREATE TABLE IF NOT EXISTS `tr_ptconditions` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_conditions` int(11) NOT NULL,
  `tr_lang` varchar(10) NOT NULL,
  `tr_slug` varchar(100) NOT NULL,
  `tr_name` varchar(100) NOT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tr_ptconditions`
--

INSERT INTO `tr_ptconditions` (`tr_id`, `tr_conditions`, `tr_lang`, `tr_slug`, `tr_name`) VALUES
(1, 1, 'en', 'sell', 'Sell'),
(2, 2, 'en', 'rent', 'Rent');

-- --------------------------------------------------------

--
-- Table structure for table `tr_ptextras`
--

DROP TABLE IF EXISTS `tr_ptextras`;
CREATE TABLE IF NOT EXISTS `tr_ptextras` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_extra` int(11) NOT NULL,
  `tr_lang` varchar(10) NOT NULL,
  `tr_name` varchar(100) NOT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tr_ptextras`
--

INSERT INTO `tr_ptextras` (`tr_id`, `tr_extra`, `tr_lang`, `tr_name`) VALUES
(1, 1, 'en', 'Main Road Facing'),
(2, 2, 'en', 'OWNERS LAND'),
(3, 3, 'en', 'Premium Lands'),
(4, 4, 'en', 'Swimming Pool');

-- --------------------------------------------------------

--
-- Table structure for table `tr_ptmandal`
--

DROP TABLE IF EXISTS `tr_ptmandal`;
CREATE TABLE IF NOT EXISTS `tr_ptmandal` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NOT NULL DEFAULT 0,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `tr_mandal` int(11) NOT NULL,
  `tr_lang` varchar(10) NOT NULL,
  `tr_slug` varchar(100) NOT NULL,
  `tr_name` varchar(100) NOT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tr_ptmandal`
--

INSERT INTO `tr_ptmandal` (`tr_id`, `city_id`, `zone_id`, `tr_mandal`, `tr_lang`, `tr_slug`, `tr_name`) VALUES
(1, 2, 2, 1, 'en', 'test-mandal-12', 'Maheshwaram'),
(2, 2, 4, 2, 'en', 'telangana', 'DHARUR'),
(3, 2, 4, 3, 'en', 'kotepally', 'KOTEPALLY'),
(4, 2, 4, 4, 'en', 'vikarabad', 'VIKARABAD'),
(5, 3, 5, 6, 'en', 'majuli', 'Majuli'),
(6, 3, 5, 7, 'en', 'rent', 'Rent'),
(7, 4, 6, 8, 'en', 'bhimavaram', 'Bhimavaram'),
(8, 2, 3, 9, 'en', 'maheshwaram', 'MAHESHWARAM'),
(9, 2, 3, 10, 'en', 'mansanpally', 'MANSANPALLY'),
(10, 2, 3, 11, 'en', 'ramachandra-guda', 'RAMACHANDRA GUDA'),
(11, 2, 3, 12, 'en', 'shankarpally', 'SHANKARPALLY'),
(12, 2, 2, 13, 'en', 'mominpet', 'MOMINPET'),
(13, 2, 2, 14, 'en', 'vikarabad', 'VIKARABAD'),
(14, 2, 32, 15, 'en', 'patancheru', 'PATANCHERU'),
(15, 2, 32, 16, 'en', 'sangareddy', 'SANGAREDDY'),
(16, 2, 31, 17, 'en', 'maheshwaram', 'MAHESHWARAM'),
(17, 2, 2, 18, 'en', 'bantwaram', 'BANTWARAM'),
(18, 2, 2, 19, 'en', 'basheerabad', 'BASHEERABAD'),
(19, 2, 2, 20, 'en', 'bomraspet', 'BOMRASPET'),
(20, 2, 2, 21, 'en', 'chowdapur', 'CHOWDAPUR'),
(21, 2, 2, 22, 'en', 'dharur', 'DHARUR'),
(22, 2, 2, 23, 'en', 'doma', 'DOMA'),
(23, 2, 2, 24, 'en', 'doulatabad', 'DOULATABAD'),
(24, 2, 2, 25, 'en', 'dudyal', 'DUDYAL'),
(25, 2, 2, 26, 'en', 'kodangal', 'KODANGAL'),
(26, 2, 2, 27, 'en', 'kotepally', 'KOTEPALLY'),
(27, 2, 2, 28, 'en', 'kulkacharla', 'KULKACHARLA'),
(28, 2, 2, 29, 'en', 'marpalle', 'MARPALLE'),
(29, 2, 2, 30, 'en', 'nawabpet', 'NAWABPET'),
(30, 2, 2, 31, 'en', 'pargi', 'PARGI'),
(31, 2, 2, 32, 'en', 'peddemul', 'PEDDEMUL'),
(32, 2, 2, 33, 'en', 'pudur', 'PUDUR'),
(33, 2, 2, 34, 'en', 'tandur', 'TANDUR'),
(34, 2, 2, 35, 'en', 'yelal', 'YELAL'),
(35, 2, 3, 36, 'en', 'abdullapurmet', 'ABDULLAPURMET'),
(36, 2, 3, 37, 'en', 'amangal', 'AMANGAL'),
(37, 2, 3, 38, 'en', 'balapur', 'BALAPUR'),
(38, 2, 3, 39, 'en', 'chevella', 'CHEVELLA'),
(39, 2, 3, 40, 'en', 'farooqnagar', 'FAROOQNAGAR'),
(40, 2, 3, 41, 'en', 'gandipet', 'GANDIPET'),
(41, 2, 3, 42, 'en', 'hayathnagar', 'HAYATHNAGAR'),
(42, 2, 3, 43, 'en', 'ibrahimpatnam', 'IBRAHIMPATNAM'),
(43, 2, 3, 44, 'en', 'jilled-chowdergudem', 'JILLED CHOWDERGUDEM'),
(44, 2, 3, 45, 'en', 'kadthal', 'KADTHAL'),
(45, 2, 3, 46, 'en', 'kandukur', 'KANDUKUR'),
(46, 2, 3, 47, 'en', 'keshampeta', 'KESHAMPETA'),
(47, 2, 3, 48, 'en', 'kondurg', 'KONDURG'),
(48, 2, 3, 49, 'en', 'kothur', 'KOTHUR'),
(49, 2, 3, 50, 'en', 'madgul', 'MADGUL'),
(50, 2, 3, 51, 'en', 'manchal', 'MANCHAL'),
(51, 2, 3, 52, 'en', 'moinabad', 'MOINABAD'),
(52, 2, 3, 53, 'en', 'nandigama', 'NANDIGAMA'),
(53, 2, 3, 54, 'en', 'rajendranagar', 'RAJENDRANAGAR'),
(54, 2, 3, 55, 'en', 'saroornagar', 'SAROORNAGAR'),
(55, 2, 3, 56, 'en', 'shabad', 'SHABAD'),
(56, 2, 3, 57, 'en', 'shamshabad', 'SHAMSHABAD'),
(57, 2, 3, 58, 'en', 'shankarpalle', 'SHANKARPALLE'),
(58, 2, 3, 59, 'en', 'serilingampalle', 'SERILINGAMPALLE'),
(59, 2, 3, 60, 'en', 'talakondapally', 'TALAKONDAPALLY'),
(60, 2, 3, 61, 'en', 'yacharam', 'YACHARAM');

-- --------------------------------------------------------

--
-- Table structure for table `tr_ptstatus`
--

DROP TABLE IF EXISTS `tr_ptstatus`;
CREATE TABLE IF NOT EXISTS `tr_ptstatus` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_status` int(11) NOT NULL,
  `tr_lang` varchar(10) NOT NULL,
  `tr_slug` varchar(100) NOT NULL,
  `tr_name` varchar(100) NOT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tr_ptstatus`
--

INSERT INTO `tr_ptstatus` (`tr_id`, `tr_status`, `tr_lang`, `tr_slug`, `tr_name`) VALUES
(1, 1, 'en', 'purchase', 'Purchase'),
(2, 2, 'en', 'new-launch', 'New Launch'),
(3, 3, 'en', 'ready-to-move', 'Ready to Move'),
(4, 4, 'en', 'under-construction', 'Under Construction'),
(5, 5, 'en', 'selling', 'selling');

-- --------------------------------------------------------

--
-- Table structure for table `tr_pttypes`
--

DROP TABLE IF EXISTS `tr_pttypes`;
CREATE TABLE IF NOT EXISTS `tr_pttypes` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_type` int(11) NOT NULL,
  `tr_lang` varchar(10) NOT NULL,
  `tr_slug` varchar(100) NOT NULL,
  `tr_name` varchar(100) NOT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tr_pttypes`
--

INSERT INTO `tr_pttypes` (`tr_id`, `tr_type`, `tr_lang`, `tr_slug`, `tr_name`) VALUES
(5, 5, 'en', 'new-property', 'New Property'),
(2, 2, 'en', 'land', 'Land'),
(6, 6, 'en', 're-sale-property', 'Re-Sale Property'),
(7, 7, 'en', 'apartment', 'Apartment'),
(8, 8, 'en', 'villas', 'Villas'),
(9, 9, 'en', 'plots', 'Plots');

-- --------------------------------------------------------

--
-- Table structure for table `tr_pttypes_pro`
--

DROP TABLE IF EXISTS `tr_pttypes_pro`;
CREATE TABLE IF NOT EXISTS `tr_pttypes_pro` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_type` int(11) NOT NULL,
  `tr_lang` varchar(10) NOT NULL,
  `tr_slug` varchar(100) NOT NULL,
  `tr_name` varchar(100) NOT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tr_pttypes_pro`
--

INSERT INTO `tr_pttypes_pro` (`tr_id`, `tr_type`, `tr_lang`, `tr_slug`, `tr_name`) VALUES
(2, 2, 'en', 'new-property-type', 'New Property Type');

-- --------------------------------------------------------

--
-- Table structure for table `tr_ptvillage`
--

DROP TABLE IF EXISTS `tr_ptvillage`;
CREATE TABLE IF NOT EXISTS `tr_ptvillage` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NOT NULL DEFAULT 0,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `mandal_id` int(11) NOT NULL DEFAULT 0,
  `tr_village` int(11) NOT NULL,
  `tr_lang` varchar(10) NOT NULL,
  `tr_slug` varchar(100) NOT NULL,
  `tr_name` varchar(100) NOT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tr_ptvillage`
--

INSERT INTO `tr_ptvillage` (`tr_id`, `city_id`, `zone_id`, `mandal_id`, `tr_village`, `tr_lang`, `tr_slug`, `tr_name`) VALUES
(2, 0, 0, 0, 2, 'en', 'test-34', 'GATTUPALLY'),
(4, 0, 0, 0, 4, 'en', 'asdasa', 'RAMACHANDRA GUDA'),
(5, 0, 0, 0, 5, 'en', 'nagasamundar', 'NAGASAMUNDAR'),
(6, 0, 0, 0, 6, 'en', 'vagulapur', 'VAGULAPUR'),
(7, 0, 0, 0, 7, 'en', 'kankanlapalle', 'KANKANLAPALLE'),
(8, 0, 0, 0, 8, 'en', 'yerravally', 'YERRAVALLY'),
(13, 0, 0, 0, 13, 'en', 'mansanpally', 'MANSANPALLY'),
(14, 2, 3, 9, 14, 'en', 'mansanpally', 'MANSANPALLY'),
(15, 2, 3, 10, 15, 'en', 'mansanpally', 'MANSANPALLY'),
(16, 2, 3, 11, 16, 'en', 'maheshwaram', 'MAHESHWARAM'),
(17, 2, 3, 11, 17, 'en', 'maheshwaram', 'MAHESHWARAM'),
(18, 2, 3, 12, 18, 'en', 'shankarpally', 'SHANKARPALLY');

-- --------------------------------------------------------

--
-- Table structure for table `tr_ptzones`
--

DROP TABLE IF EXISTS `tr_ptzones`;
CREATE TABLE IF NOT EXISTS `tr_ptzones` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_zone` int(11) NOT NULL,
  `tr_lang` varchar(10) NOT NULL,
  `tr_slug` varchar(100) NOT NULL,
  `tr_name` varchar(100) NOT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tr_ptzones`
--

INSERT INTO `tr_ptzones` (`tr_id`, `tr_zone`, `tr_lang`, `tr_slug`, `tr_name`) VALUES
(3, 3, 'en', 'ranga-reddy', 'Ranga Reddy'),
(2, 2, 'en', 'vikarabad', 'Vikarabad'),
(4, 4, 'en', 'hyderabad', 'Hyderabad'),
(5, 5, 'en', 'upper-assam', 'Upper Assam'),
(6, 6, 'en', 'west-godavari-district', 'West Godavari District'),
(7, 7, 'en', 'adilabad', 'ADILABAD'),
(8, 8, 'en', 'bhadradri-kothagudem', 'BHADRADRI KOTHAGUDEM'),
(9, 9, 'en', 'hanumakonda', 'HANUMAKONDA'),
(10, 10, 'en', 'jagtial', 'JAGTIAL'),
(11, 11, 'en', 'jangoan', 'JANGOAN'),
(12, 12, 'en', 'jayashankar-bhupalpalli', 'JAYASHANKAR BHUPALPALLI'),
(13, 13, 'en', 'jogulamba-gadwal', 'JOGULAMBA GADWAL'),
(14, 14, 'en', 'kamareddy', 'KAMAREDDY'),
(15, 15, 'en', 'karimnagar', 'KARIMNAGAR'),
(16, 16, 'en', 'khammam', 'KHAMMAM'),
(17, 17, 'en', 'kumuram-bheem', 'KUMURAM BHEEM'),
(18, 18, 'en', 'mahabubabad', 'MAHABUBABAD'),
(19, 19, 'en', 'mahabubnagar', 'MAHABUBNAGAR'),
(20, 20, 'en', 'mancherial', 'MANCHERIAL'),
(21, 21, 'en', 'medak', 'MEDAK'),
(22, 22, 'en', 'medchal-malkajigiri', 'MEDCHAL-MALKAJIGIRI'),
(23, 23, 'en', 'mulug', 'MULUG'),
(24, 24, 'en', 'nagarkurnool', 'NAGARKURNOOL'),
(25, 25, 'en', 'nalgonda', 'NALGONDA'),
(26, 26, 'en', 'narayanpet', 'NARAYANPET'),
(27, 27, 'en', 'nirmal', 'NIRMAL'),
(28, 28, 'en', 'nizamabad', 'NIZAMABAD'),
(29, 29, 'en', 'peddapalli', 'PEDDAPALLI'),
(30, 30, 'en', 'rajanna-sircilla', 'RAJANNA SIRCILLA'),
(31, 31, 'en', 'rangareddy', 'RANGAREDDY'),
(32, 32, 'en', 'sangareddy', 'SANGAREDDY'),
(33, 33, 'en', 'siddipet', 'SIDDIPET'),
(34, 34, 'en', 'suryapet', 'SURYAPET'),
(35, 35, 'en', 'wanaparthy', 'WANAPARTHY'),
(36, 36, 'en', 'warangal', 'WARANGAL'),
(37, 37, 'en', 'yadadri-bhuvanagiri', 'YADADRI BHUVANAGIRI');

-- --------------------------------------------------------

--
-- Table structure for table `tr_staffs`
--

DROP TABLE IF EXISTS `tr_staffs`;
CREATE TABLE IF NOT EXISTS `tr_staffs` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_staff` int(11) NOT NULL,
  `tr_lang` varchar(10) NOT NULL,
  `tr_name` varchar(100) NOT NULL,
  `tr_job` varchar(100) NOT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `user_phone` varchar(25) DEFAULT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT 1,
  `user_role` int(11) NOT NULL DEFAULT 3,
  `user_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_created` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`),
  KEY `user_role` (`user_role`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_password`, `user_status`, `user_role`, `user_updated`, `user_created`) VALUES
(1, 'Admin', 'admin@admin.com', '', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1, 1, '2021-03-30 00:02:17', '2019-10-29 00:25:35'),
(3, 'varaprasad', 'varaprasadz@gmail.com', NULL, 'fa585d89c851dd338a70dcf535aa2a92fee7836dd6aff1226583e88e0996293f16bc009c652826e0fc5c706695a03cddce372f139eff4d13959da6f1f5d3eabe', 1, 3, '2024-09-19 11:22:27', '2024-09-19 11:22:27'),
(4, 'Praveen7674', 'praveenpedada1436@gmail.com', '7674885365', '6529946ce93bb5cc4eee2adbdb2294c0b382474d4efb0f238b2f32935d68679aeb04f97461d902a30500e9be7ff31158bba6fd27c1eece8719f141a188903791', 1, 3, '2024-12-26 05:42:50', '2024-10-18 06:45:38'),
(5, 'Ragavenderreddy', 'raghusrdp@gmail.com', NULL, 'baf8b94b7ec4a6d81ef7762e6fa7f24247d3769a85fce70feced629319b458cbc5acbaf9f25795d7a04fc97e2ac0f5cb6d38ab5e2e3e099b69a5a6036f947c14', 1, 3, '2024-10-18 06:52:40', '2024-10-18 06:52:40'),
(6, 'Saurabh', 'saurabhramdorai@gmail.com', '9908015175', '3a0f221ed79f06ddca17652181f68e9e0b5afda8c86a4c67da9420c6ecef68518420d31af8bdb95f91e60fd13bbc5924da87333ade8fd8960bde434ddbd45283', 1, 3, '2025-01-06 12:02:29', '2025-01-06 12:02:29'),
(7, 'Vara', 'vara@gmail.com', '8008888445', '9c6d7952755415c26ff3c5dc3cc1ee281b56c8542c8619e1d5133a49387d9b26deab3d0d140849a84ca8d13b34cca329af6878ab27d505ccccd473b3a7c56c2a', 1, 3, '2025-06-06 08:52:05', '2025-06-06 08:11:00'),
(8, 'Saurabh', 'saurabh.r@gmail.com', '9908015175', '9c6d7952755415c26ff3c5dc3cc1ee281b56c8542c8619e1d5133a49387d9b26deab3d0d140849a84ca8d13b34cca329af6878ab27d505ccccd473b3a7c56c2a', 1, 3, '2025-07-10 07:16:07', '2025-07-10 07:16:07'),
(9, 'Hemachandra', 'hemachandra.pasupuleti@gmail.com', '9885737450', '16a82dc9e32ab7bbf2750297d9cda9b09bb14a680277b95c27fc2a4822dc3fcd29bcb00ebb1772ac90b83ec22bb89bd972bbe424fe02677c8358feea9854afa3', 1, 3, '2025-07-25 06:28:14', '2025-07-25 06:28:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tr_pages`
--
ALTER TABLE `tr_pages` ADD FULLTEXT KEY `fulltext_tr_slug` (`tr_slug`);

--
-- Indexes for table `tr_posts`
--
ALTER TABLE `tr_posts` ADD FULLTEXT KEY `fulltext_tr_slug` (`tr_slug`);

--
-- Indexes for table `tr_ptconditions`
--
ALTER TABLE `tr_ptconditions` ADD FULLTEXT KEY `tr_slug` (`tr_slug`);

--
-- Indexes for table `tr_ptstatus`
--
ALTER TABLE `tr_ptstatus` ADD FULLTEXT KEY `tr_slug` (`tr_slug`);

--
-- Indexes for table `tr_pttypes`
--
ALTER TABLE `tr_pttypes` ADD FULLTEXT KEY `tr_slug` (`tr_slug`);

--
-- Indexes for table `tr_pttypes_pro`
--
ALTER TABLE `tr_pttypes_pro` ADD FULLTEXT KEY `tr_slug` (`tr_slug`);

--
-- Indexes for table `tr_ptvillage`
--
ALTER TABLE `tr_ptvillage` ADD FULLTEXT KEY `tr_slug` (`tr_slug`);

--
-- Indexes for table `tr_ptzones`
--
ALTER TABLE `tr_ptzones` ADD FULLTEXT KEY `tr_slug` (`tr_slug`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_users_roles` FOREIGN KEY (`user_role`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
