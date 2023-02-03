<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://tempuri.org/" xmlns:s1="http://tempuri.org/AbstractTypes" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" targetNamespace="http://tempuri.org/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://tempuri.org/">
      <s:element name="GetServerDateTime_REST">
        <s:complexType />
      </s:element>
      <s:element name="GetServerDateTime_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="GetServerDateTime">
        <s:complexType />
      </s:element>
      <s:element name="GetServerDateTimeResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="GetServerDateTimeResult" type="s:dateTime" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ContactGet_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="ContactID" type="s:long" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ContactGet_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="ContactGet">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="ContactID" type="s:long" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ContactGetResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ContactGetResult" type="tns:GetContactResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="GetContactResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="Data" type="tns:Contact" />
        </s:sequence>
      </s:complexType>
      <s:simpleType name="Status">
        <s:restriction base="s:string">
          <s:enumeration value="ServerError" />
          <s:enumeration value="Failed" />
          <s:enumeration value="Success" />
          <s:enumeration value="AccountIsDemo" />
          <s:enumeration value="CreditNotEnough" />
          <s:enumeration value="LineNumber_NotExist" />
          <s:enumeration value="BackupLineNumber_NotExist" />
          <s:enumeration value="Avanak_NotAvailable" />
          <s:enumeration value="UserName_Empty" />
          <s:enumeration value="Password_Empty" />
          <s:enumeration value="LineNumber_Empty" />
          <s:enumeration value="BackupLineNumber_Empty" />
          <s:enumeration value="SMSMessageText_Empty" />
          <s:enumeration value="AvanakMessageText_Empty" />
          <s:enumeration value="Mobile_Empty" />
          <s:enumeration value="Mobiles_Empty" />
          <s:enumeration value="Title_Empty" />
          <s:enumeration value="FirstNameOrLastName_Empty" />
          <s:enumeration value="URLAddress_Empty" />
          <s:enumeration value="UserNameOrPassword_Invalid" />
          <s:enumeration value="Mobile_Invalid" />
          <s:enumeration value="Mobiles_Invalid" />
          <s:enumeration value="Count_Invalid" />
          <s:enumeration value="FromRow_Invalid" />
          <s:enumeration value="FromDate_Invalid" />
          <s:enumeration value="FromDateTime_Invalid" />
          <s:enumeration value="ToDate_Invalid" />
          <s:enumeration value="ToDateTime_Invalid" />
          <s:enumeration value="FromDateIsAfterThanToDate" />
          <s:enumeration value="FromDateTimeIsAfterThanToDateTime" />
          <s:enumeration value="MessageID_Invalid" />
          <s:enumeration value="BulkID_Invalid" />
          <s:enumeration value="ContactID_Invalid" />
          <s:enumeration value="ContactGroupID_Invalid" />
          <s:enumeration value="CourseID_Invalid" />
          <s:enumeration value="CourseGroupID_Invalid" />
          <s:enumeration value="URLAddress_Duplicate" />
          <s:enumeration value="RelayMessageDeliveryID_Invalid" />
          <s:enumeration value="RelayRecieveMessageID_Invalid" />
          <s:enumeration value="Length_Invalid" />
          <s:enumeration value="Length_Exceeded" />
        </s:restriction>
      </s:simpleType>
      <s:complexType name="Contact">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="ID" type="s:long" />
          <s:element minOccurs="1" maxOccurs="1" name="Active" type="s:boolean" />
          <s:element minOccurs="1" maxOccurs="1" name="ContactGroupID" type="s:long" />
          <s:element minOccurs="1" maxOccurs="1" name="Mobile" type="s:long" />
          <s:element minOccurs="0" maxOccurs="1" name="FName" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="LName" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="GenderType" type="s:boolean" />
          <s:element minOccurs="0" maxOccurs="1" name="CompanyTitle" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="JobTitle" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Email" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CityName" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AddressText" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="BornDate" nillable="true" type="s:dateTime" />
          <s:element minOccurs="1" maxOccurs="1" name="AnniversaryDate" nillable="true" type="s:dateTime" />
          <s:element minOccurs="0" maxOccurs="1" name="CustomText1" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CustomText2" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CustomText3" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CustomText4" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CustomText5" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CustomText6" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="CustomDate1" nillable="true" type="s:dateTime" />
          <s:element minOccurs="1" maxOccurs="1" name="CustomDate2" nillable="true" type="s:dateTime" />
          <s:element minOccurs="1" maxOccurs="1" name="CustomDate3" nillable="true" type="s:dateTime" />
          <s:element minOccurs="1" maxOccurs="1" name="Deleted" type="s:boolean" />
          <s:element minOccurs="1" maxOccurs="1" name="UpdateDateTime" type="s:dateTime" />
        </s:sequence>
      </s:complexType>
      <s:element name="ContactListUpdates_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="ContactGroupID" type="s:long" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ContactListUpdates_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="ContactListUpdates">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="ContactGroupID" type="s:long" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ContactListUpdatesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ContactListUpdatesResult" type="tns:ContactListUpdatesResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ContactListUpdatesResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="Data" type="tns:ArrayOfContactUpdateInfo" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfContactUpdateInfo">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="ContactUpdateInfo" nillable="true" type="tns:ContactUpdateInfo" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ContactUpdateInfo">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="ID" type="s:long" />
          <s:element minOccurs="1" maxOccurs="1" name="UpdateDateTime" type="s:dateTime" />
          <s:element minOccurs="1" maxOccurs="1" name="Deleted" type="s:boolean" />
        </s:sequence>
      </s:complexType>
      <s:element name="ContactGroupList_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ContactGroupList_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="ContactGroupList">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ContactGroupListResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ContactGroupListResult" type="tns:ContactGroupListResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ContactGroupListResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="Data" type="tns:ArrayOfContactGroup" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfContactGroup">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="ContactGroup" nillable="true" type="tns:ContactGroup" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ContactGroup">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="ContactGroupID" type="s:long" />
          <s:element minOccurs="0" maxOccurs="1" name="Title" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="ContactsCount" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="ContactsActiveCount" type="s:int" />
        </s:sequence>
      </s:complexType>
      <s:element name="ContactList_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="ContactGroupID" type="s:long" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ContactList_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="ContactList">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="ContactGroupID" type="s:long" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ContactListResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ContactListResult" type="tns:ContactListResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ContactListResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="Data" type="tns:ArrayOfContact" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfContact">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="Contact" nillable="true" type="tns:Contact" />
        </s:sequence>
      </s:complexType>
      <s:element name="ContactCreate_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="ContactGroupID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="Active" type="s:boolean" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="FName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LName" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="GenderType" type="s:boolean" />
            <s:element minOccurs="0" maxOccurs="1" name="CompanyTitle" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="JobTitle" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Email" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CityName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AddressText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="BornDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AnniversaryDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText3" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText4" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText5" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText6" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomDate1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomDate2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomDate3" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Labels" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ContactCreate_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="ContactCreate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="ContactGroupID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="Active" type="s:boolean" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="FName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LName" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="GenderType" type="s:boolean" />
            <s:element minOccurs="0" maxOccurs="1" name="CompanyTitle" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="JobTitle" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Email" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CityName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AddressText" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="BornDate" nillable="true" type="s:dateTime" />
            <s:element minOccurs="1" maxOccurs="1" name="AnniversaryDate" nillable="true" type="s:dateTime" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText3" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText4" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText5" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText6" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="CustomDate1" nillable="true" type="s:dateTime" />
            <s:element minOccurs="1" maxOccurs="1" name="CustomDate2" nillable="true" type="s:dateTime" />
            <s:element minOccurs="1" maxOccurs="1" name="CustomDate3" nillable="true" type="s:dateTime" />
            <s:element minOccurs="0" maxOccurs="1" name="Labels" type="tns:ArrayOfString" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfString">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="string" nillable="true" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="ContactCreateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ContactCreateResult" type="tns:ContactCreateEditResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ContactCreateEditResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="Data" type="tns:Contact" />
        </s:sequence>
      </s:complexType>
      <s:element name="ContactEdit_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="ContactID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="ContactGroupID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="Active" type="s:boolean" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="FName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LName" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="GenderType" type="s:boolean" />
            <s:element minOccurs="0" maxOccurs="1" name="CompanyTitle" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="JobTitle" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Email" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CityName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AddressText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="BornDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AnniversaryDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText3" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText4" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText5" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText6" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomDate1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomDate2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomDate3" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ContactEdit_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="ContactEdit">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="ContactID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="ContactGroupID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="Active" type="s:boolean" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="FName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LName" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="GenderType" type="s:boolean" />
            <s:element minOccurs="0" maxOccurs="1" name="CompanyTitle" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="JobTitle" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Email" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CityName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AddressText" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="BornDate" nillable="true" type="s:dateTime" />
            <s:element minOccurs="1" maxOccurs="1" name="AnniversaryDate" nillable="true" type="s:dateTime" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText3" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText4" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText5" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomText6" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="CustomDate1" nillable="true" type="s:dateTime" />
            <s:element minOccurs="1" maxOccurs="1" name="CustomDate2" nillable="true" type="s:dateTime" />
            <s:element minOccurs="1" maxOccurs="1" name="CustomDate3" nillable="true" type="s:dateTime" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ContactEditResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ContactEditResult" type="tns:ContactCreateEditResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ContactDelete_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="ContactID" type="s:long" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ContactDelete_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="ContactDelete">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="ContactID" type="s:long" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ContactDeleteResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ContactDeleteResult" type="tns:ContactDeleteResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ContactDeleteResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="Data" type="tns:ContactUpdateInfo" />
        </s:sequence>
      </s:complexType>
      <s:element name="CourseSetActive_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="Active" type="s:boolean" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CourseSetActive_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="CourseSetActive">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="Active" type="s:boolean" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CourseSetActiveResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="CourseSetActiveResult" type="tns:Status" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CourseCreateSimple_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseGroupID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseType" type="tns:CourseType" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseDateTime" type="s:dateTime" />
            <s:element minOccurs="0" maxOccurs="1" name="Title" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:simpleType name="CourseType">
        <s:restriction base="s:string">
          <s:enumeration value="Yearly" />
          <s:enumeration value="Monthly" />
          <s:enumeration value="Weekly" />
          <s:enumeration value="Daily" />
        </s:restriction>
      </s:simpleType>
      <s:element name="CourseCreateSimple_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="CourseCreateSimple">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseGroupID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseType" type="tns:CourseType" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseDateTime" type="s:dateTime" />
            <s:element minOccurs="0" maxOccurs="1" name="Title" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CourseCreateSimpleResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CourseCreateSimpleResult" type="tns:CourseCreateResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CourseCreateResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="1" maxOccurs="1" name="CourseID" type="s:long" />
        </s:sequence>
      </s:complexType>
      <s:element name="CourseCreateWithAvanak_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseGroupID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseType" type="tns:CourseType" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseDateTime" type="s:dateTime" />
            <s:element minOccurs="0" maxOccurs="1" name="Title" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AvanakMessageText" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="SpeakerType" type="tns:AvanakSpeakerType" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:simpleType name="AvanakSpeakerType">
        <s:restriction base="s:string">
          <s:enumeration value="female" />
          <s:enumeration value="male" />
        </s:restriction>
      </s:simpleType>
      <s:element name="CourseCreateWithAvanak_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="CourseCreateWithAvanak">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseGroupID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseType" type="tns:CourseType" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseDateTime" type="s:dateTime" />
            <s:element minOccurs="0" maxOccurs="1" name="Title" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AvanakMessageText" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="SpeakerType" type="tns:AvanakSpeakerType" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CourseCreateWithAvanakResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CourseCreateWithAvanakResult" type="tns:CourseCreateResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CourseCreateWithBackupLine_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseGroupID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseType" type="tns:CourseType" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseDateTime" type="s:dateTime" />
            <s:element minOccurs="0" maxOccurs="1" name="Title" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="BackupLineNumber" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CourseCreateWithBackupLine_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="CourseCreateWithBackupLine">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseGroupID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseType" type="tns:CourseType" />
            <s:element minOccurs="1" maxOccurs="1" name="CourseDateTime" type="s:dateTime" />
            <s:element minOccurs="0" maxOccurs="1" name="Title" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="BackupLineNumber" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CourseCreateWithBackupLineResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CourseCreateWithBackupLineResult" type="tns:CourseCreateResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CourseList_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CourseList_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="CourseList">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CourseListResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CourseListResult" type="tns:CourseListResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CourseListResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="Data" type="tns:ArrayOfCourseGroupFull" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfCourseGroupFull">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="CourseGroupFull" nillable="true" type="tns:CourseGroupFull" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="CourseGroupFull">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="CourseGroupID" type="s:long" />
          <s:element minOccurs="0" maxOccurs="1" name="Title" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Courses" type="tns:ArrayOfCourse" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfCourse">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="Course" nillable="true" type="tns:Course" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="Course">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="CourseID" type="s:long" />
          <s:element minOccurs="1" maxOccurs="1" name="CourseGroupID" type="s:long" />
          <s:element minOccurs="1" maxOccurs="1" name="CourseType" type="tns:CourseType" />
          <s:element minOccurs="1" maxOccurs="1" name="CourseDateTime" type="s:dateTime" />
          <s:element minOccurs="0" maxOccurs="1" name="Title" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="Mobile" type="s:long" />
          <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="MessageType" type="tns:MessageType" />
          <s:element minOccurs="0" maxOccurs="1" name="BackupLineNumber" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="UseAvanakMessage" type="s:boolean" />
          <s:element minOccurs="0" maxOccurs="1" name="AvanakMessageText" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="SpeakerType" type="tns:AvanakSpeakerType" />
          <s:element minOccurs="1" maxOccurs="1" name="UseBackupLineNumber" type="s:boolean" />
        </s:sequence>
      </s:complexType>
      <s:simpleType name="MessageType">
        <s:restriction base="s:string">
          <s:enumeration value="Simple" />
          <s:enumeration value="WithBackupLine" />
          <s:enumeration value="WithAvanak" />
        </s:restriction>
      </s:simpleType>
      <s:element name="CourseGroupCreate_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Title" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CourseGroupCreate_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="CourseGroupCreate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Title" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CourseGroupCreateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CourseGroupCreateResult" type="tns:CourseGroupCreateResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CourseGroupCreateResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="1" maxOccurs="1" name="CourseGroupID" type="s:long" />
        </s:sequence>
      </s:complexType>
      <s:element name="CourseGroupList_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CourseGroupList_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="CourseGroupList">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CourseGroupListResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CourseGroupListResult" type="tns:CourseGroupListResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CourseGroupListResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="Data" type="tns:ArrayOfCourseGroup" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfCourseGroup">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="CourseGroup" nillable="true" type="tns:CourseGroup" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="CourseGroup">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="CourseGroupID" type="s:long" />
          <s:element minOccurs="0" maxOccurs="1" name="Title" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="SendSimple_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SendDateTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobiles" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendSimple_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="SendSimple">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="SendDateTime" type="s:dateTime" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobiles" type="tns:ArrayOfString" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendSimpleResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SendSimpleResult" type="tns:SendResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="SendResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="Data" type="tns:ArrayOfSendResult_Data" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfSendResult_Data">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="SendResult_Data" nillable="true" type="tns:SendResult_Data" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="SendResult_Data">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Mobile" type="s:long" />
          <s:element minOccurs="1" maxOccurs="1" name="MessageID" type="s:long" />
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
        </s:sequence>
      </s:complexType>
      <s:element name="SendWithAvanak_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SendDateTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AvanakMessageText" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="SpeakerType" type="tns:AvanakSpeakerType" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobiles" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendWithAvanak_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="SendWithAvanak">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="SendDateTime" type="s:dateTime" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AvanakMessageText" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="SpeakerType" type="tns:AvanakSpeakerType" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobiles" type="tns:ArrayOfString" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendWithAvanakResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SendWithAvanakResult" type="tns:SendResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendWithBackupLine_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SendDateTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="BackupLineNumber" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobiles" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendWithBackupLine_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="SendWithBackupLine">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="SendDateTime" type="s:dateTime" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="BackupLineNumber" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobiles" type="tns:ArrayOfString" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendWithBackupLineResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SendWithBackupLineResult" type="tns:SendResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendWithPattern_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="PatternCodeID" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="PatternValues" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendWithPattern_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="SendWithPattern">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="PatternCodeID" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="PatternValues" type="tns:ArrayOfString" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendWithPatternResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SendWithPatternResult" type="tns:SendResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendQuickOTP_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="CodeLength" type="s:short" />
            <s:element minOccurs="0" maxOccurs="1" name="OptionalCode" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendQuickOTP_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="SendQuickOTP">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="CodeLength" type="s:short" />
            <s:element minOccurs="0" maxOccurs="1" name="OptionalCode" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendQuickOTPResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SendQuickOTPResult" type="tns:SendOTPResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="SendOTPResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="Data" type="tns:SendOTPResult_Data" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="SendOTPResult_Data">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Mobile" type="s:long" />
          <s:element minOccurs="1" maxOccurs="1" name="MessageID" type="s:long" />
          <s:element minOccurs="0" maxOccurs="1" name="Code" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
        </s:sequence>
      </s:complexType>
      <s:element name="SendOTP_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SendDateTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="CodeLength" type="s:short" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendOTP_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="SendOTP">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="SendDateTime" type="s:dateTime" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="CodeLength" type="s:short" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendOTPResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SendOTPResult" type="tns:SendOTPResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendBank_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SendDateTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="BankID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="OrderType" type="tns:SendOrderType" />
            <s:element minOccurs="1" maxOccurs="1" name="FromRow" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="Count" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:simpleType name="SendOrderType">
        <s:restriction base="s:string">
          <s:enumeration value="Sequential" />
          <s:enumeration value="Random" />
        </s:restriction>
      </s:simpleType>
      <s:element name="SendBank_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="SendBank">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="SendDateTime" type="s:dateTime" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="BankID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="OrderType" type="tns:SendOrderType" />
            <s:element minOccurs="1" maxOccurs="1" name="FromRow" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="Count" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendBankResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SendBankResult" type="tns:SendResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendBankWithAvanak_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SendDateTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AvanakMessageText" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="SpeakerType" type="tns:AvanakSpeakerType" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="BankID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="OrderType" type="tns:SendOrderType" />
            <s:element minOccurs="1" maxOccurs="1" name="FromRow" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="Count" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendBankWithAvanak_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="SendBankWithAvanak">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="SendDateTime" type="s:dateTime" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AvanakMessageText" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="SpeakerType" type="tns:AvanakSpeakerType" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="BankID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="OrderType" type="tns:SendOrderType" />
            <s:element minOccurs="1" maxOccurs="1" name="FromRow" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="Count" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendBankWithAvanakResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SendBankWithAvanakResult" type="tns:SendResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendBankWithBackupLine_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SendDateTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="BackupLineNumber" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="BankID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="OrderType" type="tns:SendOrderType" />
            <s:element minOccurs="1" maxOccurs="1" name="FromRow" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="Count" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendBankWithBackupLine_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="SendBankWithBackupLine">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="SendDateTime" type="s:dateTime" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="BackupLineNumber" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="BankID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="OrderType" type="tns:SendOrderType" />
            <s:element minOccurs="1" maxOccurs="1" name="FromRow" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="Count" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SendBankWithBackupLineResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SendBankWithBackupLineResult" type="tns:SendResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetBankTree_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetBankTree_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="GetBankTree">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetBankTreeResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetBankTreeResult" type="tns:BankTreeResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="BankTreeResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="Data" type="tns:ArrayOfBankInfo" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfBankInfo">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="BankInfo" nillable="true" type="tns:BankInfo" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="BankInfo">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="ID" type="s:long" />
          <s:element minOccurs="0" maxOccurs="1" name="Children" type="tns:ArrayOfBankInfo" />
          <s:element minOccurs="0" maxOccurs="1" name="Title" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="Count" type="s:int" />
        </s:sequence>
      </s:complexType>
      <s:element name="RecieveNewMessages_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="Count" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RecieveNewMessages_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="RecieveNewMessages">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="Count" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RecieveNewMessagesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="RecieveNewMessagesResult" type="tns:ReceiveResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ReceiveResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="Data" type="tns:ArrayOfReceiveResult_Data" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfReceiveResult_Data">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="ReceiveResult_Data" nillable="true" type="tns:ReceiveResult_Data" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ReceiveResult_Data">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="ReceiveMessageID" type="s:long" />
          <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="RecieveDateTime" type="s:dateTime" />
        </s:sequence>
      </s:complexType>
      <s:element name="RecieveMessages_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="FromDateTime" type="s:dateTime" />
            <s:element minOccurs="1" maxOccurs="1" name="ToDateTime" type="s:dateTime" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RecieveMessages_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="RecieveMessages">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="FromDateTime" type="s:dateTime" />
            <s:element minOccurs="1" maxOccurs="1" name="ToDateTime" type="s:dateTime" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RecieveMessagesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="RecieveMessagesResult" type="tns:ReceiveResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetMessage_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="MessageID" type="s:long" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetMessage_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="GetMessage">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="MessageID" type="s:long" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetMessageResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetMessageResult" type="tns:MessageResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="MessageResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="Data" type="tns:MessageResult_Data" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="MessageResult_Data">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="MessageID" type="s:long" />
          <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="RegDateTime" type="s:dateTime" />
          <s:element minOccurs="1" maxOccurs="1" name="SentDateTime" type="s:dateTime" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetMessages_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="FromDateTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ToDateTime" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetMessages_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="GetMessages">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="FromDateTime" type="s:dateTime" />
            <s:element minOccurs="1" maxOccurs="1" name="ToDateTime" type="s:dateTime" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetMessagesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetMessagesResult" type="tns:MessagesResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="MessagesResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="Data" type="tns:ArrayOfMessageResult_Data" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfMessageResult_Data">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="MessageResult_Data" nillable="true" type="tns:MessageResult_Data" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetDelivery_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="MessageID" type="s:long" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetDelivery_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="GetDelivery">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="MessageID" type="s:long" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetDeliveryResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetDeliveryResult" type="tns:DeliveryResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="DeliveryResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="Data" type="tns:DeliveryResult_Data" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="DeliveryResult_Data">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="MessageID" type="s:long" />
          <s:element minOccurs="1" maxOccurs="1" name="DeliveryType" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Cost" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="RegDateTime" type="s:dateTime" />
          <s:element minOccurs="1" maxOccurs="1" name="SendDateTime" type="s:dateTime" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetDeliveries_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ListMessageID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetDeliveries_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="GetDeliveries">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ListMessageID" type="tns:ArrayOfLong" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfLong">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="long" type="s:long" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetDeliveriesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetDeliveriesResult" type="tns:DeliveriesResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="DeliveriesResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="Data" type="tns:ArrayOfDeliveriesResult_Data" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfDeliveriesResult_Data">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="DeliveriesResult_Data" nillable="true" type="tns:DeliveriesResult_Data" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="DeliveriesResult_Data">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="MessageID" type="s:long" />
          <s:element minOccurs="1" maxOccurs="1" name="DeliveryType" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Cost" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="RegDateTime" type="s:dateTime" />
          <s:element minOccurs="1" maxOccurs="1" name="SendDateTime" type="s:dateTime" />
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
        </s:sequence>
      </s:complexType>
      <s:element name="AccountStatus_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="AccountStatus_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="AccountStatus">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="AccountStatusResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="AccountStatusResult" type="tns:AccountStatusResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="AccountStatusResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="AccountName" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="RemaindCredit" type="s:long" />
          <s:element minOccurs="1" maxOccurs="1" name="BaseSMS_PersianPrice" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="BaseSMS_EnglishPrice" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="ServiceSMS_PersianPrice" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="ServiceSMS_EnglishPrice" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="AdsSMS_PersianPrice" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="AdsSMS_EnglishPrice" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Avanak_SecondPrice" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="ListLineNumbers" type="tns:ArrayOfString" />
        </s:sequence>
      </s:complexType>
      <s:element name="CalculateMessagePrice_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobiles" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CalculateMessagePrice_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="CalculateMessagePrice">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SMSMessageText" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LineNumber" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobiles" type="tns:ArrayOfString" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CalculateMessagePriceResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="CalculateMessagePriceResult" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CalculatePatternMessagePrice_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="PatternCodeID" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="PatternValues" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CalculatePatternMessagePrice_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="CalculatePatternMessagePrice">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Mobile" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="PatternCodeID" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="PatternValues" type="tns:ArrayOfString" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CalculatePatternMessagePriceResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="CalculatePatternMessagePriceResult" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Statistics_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="FromDate" type="s:dateTime" />
            <s:element minOccurs="1" maxOccurs="1" name="ToDate" type="s:dateTime" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Statistics_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="Statistics">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="FromDate" type="s:dateTime" />
            <s:element minOccurs="1" maxOccurs="1" name="ToDate" type="s:dateTime" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="StatisticsResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="StatisticsResult" type="tns:StatisticsResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="StatisticsResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="Data" type="tns:ArrayOfDailySentCountInfo" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfDailySentCountInfo">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="DailySentCountInfo" nillable="true" type="tns:DailySentCountInfo" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="DailySentCountInfo">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="OnlyDate" type="s:dateTime" />
          <s:element minOccurs="1" maxOccurs="1" name="Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Total" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="User_CountActive" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="User_CountAtDate" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="User_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="InQueue_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="InQueue_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="InQueue_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="OutOfQueue_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="OutOfQueue_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="OutOfQueue_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Sent_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Sent_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Sent_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="NotSent_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="NotSent_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="NotSent_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Deleted_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Deleted_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Deleted_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Public_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Public_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Public_CountTotalPrice" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Public_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Private_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Private_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Private_CountTotalPrice" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Private_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Ads_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Ads_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Ads_CountTotalPrice" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Ads_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Services_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Services_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Services_CountTotalPrice" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Services_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_SendToTci_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_SendToTci_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_SendToTci_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_RecievedPhone_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_RecievedPhone_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_RecievedPhone_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_NotRecievedPhone_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_NotRecievedPhone_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_NotRecievedPhone_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_UnknownError_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_UnknownError_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_UnknownError_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_TciReceived_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_TciReceived_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_TciReceived_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_NotTciReceived_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_NotTciReceived_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_NotTciReceived_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_BlackList_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_BlackList_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_BlackList_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_Unknown_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_Unknown_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_Unknown_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_Sent_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_Sent_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_Sent_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_Filtered_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_Filtered_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_Filtered_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_SendingList_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_SendingList_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_SendingList_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_NoReceipt_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_NoReceipt_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_NoReceipt_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_SendWithAvanak_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_SendWithAvanak_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_SendWithAvanak_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_SendWithBackupVtel_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_SendWithBackupVtel_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_SendWithBackupVtel_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_SendingQueue_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_SendingQueue_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_SendingQueue_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_WrongNumber_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_WrongNumber_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_WrongNumber_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_EmptyMessage_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_EmptyMessage_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_EmptyMessage_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_ShortCodeInvalid_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_ShortCodeInvalid_CountTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="Delivery_ShortCodeInvalid_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="SentFrom_Unknown_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="SentFrom_Unknown_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="SentFrom_Banks_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="SentFrom_Banks_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="SentFrom_Payamap_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="SentFrom_Payamap_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="SentFrom_FormErsal_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="SentFrom_FormErsal_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="SentFrom_AmootSoftware_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="SentFrom_AmootSoftware_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="SentFrom_Schedule_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="SentFrom_Schedule_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="SentFrom_Course_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="SentFrom_Course_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="SentFrom_Filter_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="SentFrom_Filter_PriceTotal" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="SentFrom_WebService_Count" type="s:int" />
          <s:element minOccurs="1" maxOccurs="1" name="SentFrom_WebService_PriceTotal" type="s:int" />
        </s:sequence>
      </s:complexType>
      <s:element name="RelayMessageDeliverySetActive_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="RelayMessageDeliveryID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="Active" type="s:boolean" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RelayMessageDeliverySetActive_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="RelayMessageDeliverySetActive">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="RelayMessageDeliveryID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="Active" type="s:boolean" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RelayMessageDeliverySetActiveResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="RelayMessageDeliverySetActiveResult" type="tns:Status" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RelayMessageDeliveryCreate_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="URLAddress" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RelayMessageDeliveryCreate_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="RelayMessageDeliveryCreate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="URLAddress" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RelayMessageDeliveryCreateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="RelayMessageDeliveryCreateResult" type="tns:RelayMessageDeliveryCreateResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="RelayMessageDeliveryCreateResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="1" maxOccurs="1" name="RelayMessageDeliveryID" type="s:long" />
        </s:sequence>
      </s:complexType>
      <s:element name="RelayMessageDeliveryList_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RelayMessageDeliveryList_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="RelayMessageDeliveryList">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RelayMessageDeliveryListResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="RelayMessageDeliveryListResult" type="tns:RelayMessageDeliveryListResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="RelayMessageDeliveryListResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="Data" type="tns:ArrayOfRelayMessageDeliverySimple" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfRelayMessageDeliverySimple">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="RelayMessageDeliverySimple" nillable="true" type="tns:RelayMessageDeliverySimple" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="RelayMessageDeliverySimple">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="ID" type="s:long" />
          <s:element minOccurs="0" maxOccurs="1" default="true" name="Active" type="s:boolean" />
          <s:element minOccurs="1" maxOccurs="1" name="RegDateTime" type="s:dateTime" />
          <s:element minOccurs="0" maxOccurs="1" default="" name="URLAddress" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="RelayRecieveMessageSetActive_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="RelayRecieveMessageID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="Active" type="s:boolean" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RelayRecieveMessageSetActive_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="RelayRecieveMessageSetActive">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="RelayRecieveMessageID" type="s:long" />
            <s:element minOccurs="1" maxOccurs="1" name="Active" type="s:boolean" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RelayRecieveMessageSetActiveResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="RelayRecieveMessageSetActiveResult" type="tns:Status" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RelayRecieveMessageCreate_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="URLAddress" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RelayRecieveMessageCreate_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="RelayRecieveMessageCreate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="URLAddress" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RelayRecieveMessageCreateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="RelayRecieveMessageCreateResult" type="tns:RelayRecieveMessageCreateResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="RelayRecieveMessageCreateResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="1" maxOccurs="1" name="RelayRecieveMessageID" type="s:long" />
        </s:sequence>
      </s:complexType>
      <s:element name="RelayRecieveMessageList_REST">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RelayRecieveMessageList_RESTResponse">
        <s:complexType />
      </s:element>
      <s:element name="RelayRecieveMessageList">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RelayRecieveMessageListResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="RelayRecieveMessageListResult" type="tns:RelayRecieveMessageListResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="RelayRecieveMessageListResult">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="tns:Status" />
          <s:element minOccurs="0" maxOccurs="1" name="Data" type="tns:ArrayOfRelayRecieveMessageSimple" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfRelayRecieveMessageSimple">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="RelayRecieveMessageSimple" nillable="true" type="tns:RelayRecieveMessageSimple" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="RelayRecieveMessageSimple">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="ID" type="s:long" />
          <s:element minOccurs="0" maxOccurs="1" default="true" name="Active" type="s:boolean" />
          <s:element minOccurs="1" maxOccurs="1" name="RegDateTime" type="s:dateTime" />
          <s:element minOccurs="0" maxOccurs="1" default="" name="URLAddress" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="dateTime" type="s:dateTime" />
      <s:element name="GetContactResult" nillable="true" type="tns:GetContactResult" />
      <s:element name="ContactListUpdatesResult" nillable="true" type="tns:ContactListUpdatesResult" />
      <s:element name="ContactGroupListResult" nillable="true" type="tns:ContactGroupListResult" />
      <s:element name="ContactListResult" nillable="true" type="tns:ContactListResult" />
      <s:element name="ContactDeleteResult" nillable="true" type="tns:ContactDeleteResult" />
      <s:element name="Status" type="tns:Status" />
      <s:element name="CourseCreateResult" nillable="true" type="tns:CourseCreateResult" />
      <s:element name="CourseListResult" nillable="true" type="tns:CourseListResult" />
      <s:element name="CourseGroupCreateResult" nillable="true" type="tns:CourseGroupCreateResult" />
      <s:element name="CourseGroupListResult" nillable="true" type="tns:CourseGroupListResult" />
      <s:element name="SendResult" nillable="true" type="tns:SendResult" />
      <s:element name="SendOTPResult" nillable="true" type="tns:SendOTPResult" />
      <s:element name="BankTreeResult" nillable="true" type="tns:BankTreeResult" />
      <s:element name="ReceiveResult" nillable="true" type="tns:ReceiveResult" />
      <s:element name="MessageResult" nillable="true" type="tns:MessageResult" />
      <s:element name="MessagesResult" nillable="true" type="tns:MessagesResult" />
      <s:element name="DeliveryResult" nillable="true" type="tns:DeliveryResult" />
      <s:element name="AccountStatusResult" nillable="true" type="tns:AccountStatusResult" />
      <s:element name="int" type="s:int" />
      <s:element name="StatisticsResult" nillable="true" type="tns:StatisticsResult" />
      <s:element name="RelayMessageDeliveryCreateResult" nillable="true" type="tns:RelayMessageDeliveryCreateResult" />
      <s:element name="RelayMessageDeliveryListResult" nillable="true" type="tns:RelayMessageDeliveryListResult" />
      <s:element name="RelayRecieveMessageCreateResult" nillable="true" type="tns:RelayRecieveMessageCreateResult" />
      <s:element name="RelayRecieveMessageListResult" nillable="true" type="tns:RelayRecieveMessageListResult" />
    </s:schema>
    <s:schema targetNamespace="http://tempuri.org/AbstractTypes">
      <s:import namespace="http://schemas.xmlsoap.org/soap/encoding/" />
      <s:complexType name="StringArray">
        <s:complexContent mixed="false">
          <s:restriction base="soapenc:Array">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="unbounded" name="String" type="s:string" />
            </s:sequence>
          </s:restriction>
        </s:complexContent>
      </s:complexType>
    </s:schema>
  </wsdl:types>
  <wsdl:message name="GetServerDateTime_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:GetServerDateTime_REST" />
  </wsdl:message>
  <wsdl:message name="GetServerDateTime_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:GetServerDateTime_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="GetServerDateTimeSoapIn">
    <wsdl:part name="parameters" element="tns:GetServerDateTime" />
  </wsdl:message>
  <wsdl:message name="GetServerDateTimeSoapOut">
    <wsdl:part name="parameters" element="tns:GetServerDateTimeResponse" />
  </wsdl:message>
  <wsdl:message name="ContactGet_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:ContactGet_REST" />
  </wsdl:message>
  <wsdl:message name="ContactGet_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:ContactGet_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="ContactGetSoapIn">
    <wsdl:part name="parameters" element="tns:ContactGet" />
  </wsdl:message>
  <wsdl:message name="ContactGetSoapOut">
    <wsdl:part name="parameters" element="tns:ContactGetResponse" />
  </wsdl:message>
  <wsdl:message name="ContactListUpdates_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:ContactListUpdates_REST" />
  </wsdl:message>
  <wsdl:message name="ContactListUpdates_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:ContactListUpdates_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="ContactListUpdatesSoapIn">
    <wsdl:part name="parameters" element="tns:ContactListUpdates" />
  </wsdl:message>
  <wsdl:message name="ContactListUpdatesSoapOut">
    <wsdl:part name="parameters" element="tns:ContactListUpdatesResponse" />
  </wsdl:message>
  <wsdl:message name="ContactGroupList_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:ContactGroupList_REST" />
  </wsdl:message>
  <wsdl:message name="ContactGroupList_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:ContactGroupList_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="ContactGroupListSoapIn">
    <wsdl:part name="parameters" element="tns:ContactGroupList" />
  </wsdl:message>
  <wsdl:message name="ContactGroupListSoapOut">
    <wsdl:part name="parameters" element="tns:ContactGroupListResponse" />
  </wsdl:message>
  <wsdl:message name="ContactList_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:ContactList_REST" />
  </wsdl:message>
  <wsdl:message name="ContactList_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:ContactList_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="ContactListSoapIn">
    <wsdl:part name="parameters" element="tns:ContactList" />
  </wsdl:message>
  <wsdl:message name="ContactListSoapOut">
    <wsdl:part name="parameters" element="tns:ContactListResponse" />
  </wsdl:message>
  <wsdl:message name="ContactCreate_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:ContactCreate_REST" />
  </wsdl:message>
  <wsdl:message name="ContactCreate_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:ContactCreate_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="ContactCreateSoapIn">
    <wsdl:part name="parameters" element="tns:ContactCreate" />
  </wsdl:message>
  <wsdl:message name="ContactCreateSoapOut">
    <wsdl:part name="parameters" element="tns:ContactCreateResponse" />
  </wsdl:message>
  <wsdl:message name="ContactEdit_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:ContactEdit_REST" />
  </wsdl:message>
  <wsdl:message name="ContactEdit_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:ContactEdit_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="ContactEditSoapIn">
    <wsdl:part name="parameters" element="tns:ContactEdit" />
  </wsdl:message>
  <wsdl:message name="ContactEditSoapOut">
    <wsdl:part name="parameters" element="tns:ContactEditResponse" />
  </wsdl:message>
  <wsdl:message name="ContactDelete_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:ContactDelete_REST" />
  </wsdl:message>
  <wsdl:message name="ContactDelete_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:ContactDelete_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="ContactDeleteSoapIn">
    <wsdl:part name="parameters" element="tns:ContactDelete" />
  </wsdl:message>
  <wsdl:message name="ContactDeleteSoapOut">
    <wsdl:part name="parameters" element="tns:ContactDeleteResponse" />
  </wsdl:message>
  <wsdl:message name="CourseSetActive_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:CourseSetActive_REST" />
  </wsdl:message>
  <wsdl:message name="CourseSetActive_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:CourseSetActive_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="CourseSetActiveSoapIn">
    <wsdl:part name="parameters" element="tns:CourseSetActive" />
  </wsdl:message>
  <wsdl:message name="CourseSetActiveSoapOut">
    <wsdl:part name="parameters" element="tns:CourseSetActiveResponse" />
  </wsdl:message>
  <wsdl:message name="CourseCreateSimple_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:CourseCreateSimple_REST" />
  </wsdl:message>
  <wsdl:message name="CourseCreateSimple_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:CourseCreateSimple_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="CourseCreateSimpleSoapIn">
    <wsdl:part name="parameters" element="tns:CourseCreateSimple" />
  </wsdl:message>
  <wsdl:message name="CourseCreateSimpleSoapOut">
    <wsdl:part name="parameters" element="tns:CourseCreateSimpleResponse" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithAvanak_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:CourseCreateWithAvanak_REST" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithAvanak_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:CourseCreateWithAvanak_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithAvanakSoapIn">
    <wsdl:part name="parameters" element="tns:CourseCreateWithAvanak" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithAvanakSoapOut">
    <wsdl:part name="parameters" element="tns:CourseCreateWithAvanakResponse" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithBackupLine_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:CourseCreateWithBackupLine_REST" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithBackupLine_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:CourseCreateWithBackupLine_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithBackupLineSoapIn">
    <wsdl:part name="parameters" element="tns:CourseCreateWithBackupLine" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithBackupLineSoapOut">
    <wsdl:part name="parameters" element="tns:CourseCreateWithBackupLineResponse" />
  </wsdl:message>
  <wsdl:message name="CourseList_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:CourseList_REST" />
  </wsdl:message>
  <wsdl:message name="CourseList_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:CourseList_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="CourseListSoapIn">
    <wsdl:part name="parameters" element="tns:CourseList" />
  </wsdl:message>
  <wsdl:message name="CourseListSoapOut">
    <wsdl:part name="parameters" element="tns:CourseListResponse" />
  </wsdl:message>
  <wsdl:message name="CourseGroupCreate_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:CourseGroupCreate_REST" />
  </wsdl:message>
  <wsdl:message name="CourseGroupCreate_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:CourseGroupCreate_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="CourseGroupCreateSoapIn">
    <wsdl:part name="parameters" element="tns:CourseGroupCreate" />
  </wsdl:message>
  <wsdl:message name="CourseGroupCreateSoapOut">
    <wsdl:part name="parameters" element="tns:CourseGroupCreateResponse" />
  </wsdl:message>
  <wsdl:message name="CourseGroupList_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:CourseGroupList_REST" />
  </wsdl:message>
  <wsdl:message name="CourseGroupList_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:CourseGroupList_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="CourseGroupListSoapIn">
    <wsdl:part name="parameters" element="tns:CourseGroupList" />
  </wsdl:message>
  <wsdl:message name="CourseGroupListSoapOut">
    <wsdl:part name="parameters" element="tns:CourseGroupListResponse" />
  </wsdl:message>
  <wsdl:message name="SendSimple_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:SendSimple_REST" />
  </wsdl:message>
  <wsdl:message name="SendSimple_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:SendSimple_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="SendSimpleSoapIn">
    <wsdl:part name="parameters" element="tns:SendSimple" />
  </wsdl:message>
  <wsdl:message name="SendSimpleSoapOut">
    <wsdl:part name="parameters" element="tns:SendSimpleResponse" />
  </wsdl:message>
  <wsdl:message name="SendWithAvanak_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:SendWithAvanak_REST" />
  </wsdl:message>
  <wsdl:message name="SendWithAvanak_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:SendWithAvanak_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="SendWithAvanakSoapIn">
    <wsdl:part name="parameters" element="tns:SendWithAvanak" />
  </wsdl:message>
  <wsdl:message name="SendWithAvanakSoapOut">
    <wsdl:part name="parameters" element="tns:SendWithAvanakResponse" />
  </wsdl:message>
  <wsdl:message name="SendWithBackupLine_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:SendWithBackupLine_REST" />
  </wsdl:message>
  <wsdl:message name="SendWithBackupLine_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:SendWithBackupLine_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="SendWithBackupLineSoapIn">
    <wsdl:part name="parameters" element="tns:SendWithBackupLine" />
  </wsdl:message>
  <wsdl:message name="SendWithBackupLineSoapOut">
    <wsdl:part name="parameters" element="tns:SendWithBackupLineResponse" />
  </wsdl:message>
  <wsdl:message name="SendWithPattern_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:SendWithPattern_REST" />
  </wsdl:message>
  <wsdl:message name="SendWithPattern_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:SendWithPattern_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="SendWithPatternSoapIn">
    <wsdl:part name="parameters" element="tns:SendWithPattern" />
  </wsdl:message>
  <wsdl:message name="SendWithPatternSoapOut">
    <wsdl:part name="parameters" element="tns:SendWithPatternResponse" />
  </wsdl:message>
  <wsdl:message name="SendQuickOTP_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:SendQuickOTP_REST" />
  </wsdl:message>
  <wsdl:message name="SendQuickOTP_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:SendQuickOTP_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="SendQuickOTPSoapIn">
    <wsdl:part name="parameters" element="tns:SendQuickOTP" />
  </wsdl:message>
  <wsdl:message name="SendQuickOTPSoapOut">
    <wsdl:part name="parameters" element="tns:SendQuickOTPResponse" />
  </wsdl:message>
  <wsdl:message name="SendOTP_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:SendOTP_REST" />
  </wsdl:message>
  <wsdl:message name="SendOTP_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:SendOTP_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="SendOTPSoapIn">
    <wsdl:part name="parameters" element="tns:SendOTP" />
  </wsdl:message>
  <wsdl:message name="SendOTPSoapOut">
    <wsdl:part name="parameters" element="tns:SendOTPResponse" />
  </wsdl:message>
  <wsdl:message name="SendBank_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:SendBank_REST" />
  </wsdl:message>
  <wsdl:message name="SendBank_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:SendBank_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="SendBankSoapIn">
    <wsdl:part name="parameters" element="tns:SendBank" />
  </wsdl:message>
  <wsdl:message name="SendBankSoapOut">
    <wsdl:part name="parameters" element="tns:SendBankResponse" />
  </wsdl:message>
  <wsdl:message name="SendBankWithAvanak_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:SendBankWithAvanak_REST" />
  </wsdl:message>
  <wsdl:message name="SendBankWithAvanak_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:SendBankWithAvanak_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="SendBankWithAvanakSoapIn">
    <wsdl:part name="parameters" element="tns:SendBankWithAvanak" />
  </wsdl:message>
  <wsdl:message name="SendBankWithAvanakSoapOut">
    <wsdl:part name="parameters" element="tns:SendBankWithAvanakResponse" />
  </wsdl:message>
  <wsdl:message name="SendBankWithBackupLine_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:SendBankWithBackupLine_REST" />
  </wsdl:message>
  <wsdl:message name="SendBankWithBackupLine_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:SendBankWithBackupLine_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="SendBankWithBackupLineSoapIn">
    <wsdl:part name="parameters" element="tns:SendBankWithBackupLine" />
  </wsdl:message>
  <wsdl:message name="SendBankWithBackupLineSoapOut">
    <wsdl:part name="parameters" element="tns:SendBankWithBackupLineResponse" />
  </wsdl:message>
  <wsdl:message name="GetBankTree_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:GetBankTree_REST" />
  </wsdl:message>
  <wsdl:message name="GetBankTree_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:GetBankTree_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="GetBankTreeSoapIn">
    <wsdl:part name="parameters" element="tns:GetBankTree" />
  </wsdl:message>
  <wsdl:message name="GetBankTreeSoapOut">
    <wsdl:part name="parameters" element="tns:GetBankTreeResponse" />
  </wsdl:message>
  <wsdl:message name="RecieveNewMessages_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:RecieveNewMessages_REST" />
  </wsdl:message>
  <wsdl:message name="RecieveNewMessages_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:RecieveNewMessages_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="RecieveNewMessagesSoapIn">
    <wsdl:part name="parameters" element="tns:RecieveNewMessages" />
  </wsdl:message>
  <wsdl:message name="RecieveNewMessagesSoapOut">
    <wsdl:part name="parameters" element="tns:RecieveNewMessagesResponse" />
  </wsdl:message>
  <wsdl:message name="RecieveMessages_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:RecieveMessages_REST" />
  </wsdl:message>
  <wsdl:message name="RecieveMessages_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:RecieveMessages_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="RecieveMessagesSoapIn">
    <wsdl:part name="parameters" element="tns:RecieveMessages" />
  </wsdl:message>
  <wsdl:message name="RecieveMessagesSoapOut">
    <wsdl:part name="parameters" element="tns:RecieveMessagesResponse" />
  </wsdl:message>
  <wsdl:message name="GetMessage_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:GetMessage_REST" />
  </wsdl:message>
  <wsdl:message name="GetMessage_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:GetMessage_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="GetMessageSoapIn">
    <wsdl:part name="parameters" element="tns:GetMessage" />
  </wsdl:message>
  <wsdl:message name="GetMessageSoapOut">
    <wsdl:part name="parameters" element="tns:GetMessageResponse" />
  </wsdl:message>
  <wsdl:message name="GetMessages_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:GetMessages_REST" />
  </wsdl:message>
  <wsdl:message name="GetMessages_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:GetMessages_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="GetMessagesSoapIn">
    <wsdl:part name="parameters" element="tns:GetMessages" />
  </wsdl:message>
  <wsdl:message name="GetMessagesSoapOut">
    <wsdl:part name="parameters" element="tns:GetMessagesResponse" />
  </wsdl:message>
  <wsdl:message name="GetDelivery_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:GetDelivery_REST" />
  </wsdl:message>
  <wsdl:message name="GetDelivery_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:GetDelivery_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="GetDeliverySoapIn">
    <wsdl:part name="parameters" element="tns:GetDelivery" />
  </wsdl:message>
  <wsdl:message name="GetDeliverySoapOut">
    <wsdl:part name="parameters" element="tns:GetDeliveryResponse" />
  </wsdl:message>
  <wsdl:message name="GetDeliveries_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:GetDeliveries_REST" />
  </wsdl:message>
  <wsdl:message name="GetDeliveries_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:GetDeliveries_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="GetDeliveriesSoapIn">
    <wsdl:part name="parameters" element="tns:GetDeliveries" />
  </wsdl:message>
  <wsdl:message name="GetDeliveriesSoapOut">
    <wsdl:part name="parameters" element="tns:GetDeliveriesResponse" />
  </wsdl:message>
  <wsdl:message name="AccountStatus_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:AccountStatus_REST" />
  </wsdl:message>
  <wsdl:message name="AccountStatus_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:AccountStatus_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="AccountStatusSoapIn">
    <wsdl:part name="parameters" element="tns:AccountStatus" />
  </wsdl:message>
  <wsdl:message name="AccountStatusSoapOut">
    <wsdl:part name="parameters" element="tns:AccountStatusResponse" />
  </wsdl:message>
  <wsdl:message name="CalculateMessagePrice_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:CalculateMessagePrice_REST" />
  </wsdl:message>
  <wsdl:message name="CalculateMessagePrice_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:CalculateMessagePrice_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="CalculateMessagePriceSoapIn">
    <wsdl:part name="parameters" element="tns:CalculateMessagePrice" />
  </wsdl:message>
  <wsdl:message name="CalculateMessagePriceSoapOut">
    <wsdl:part name="parameters" element="tns:CalculateMessagePriceResponse" />
  </wsdl:message>
  <wsdl:message name="CalculatePatternMessagePrice_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:CalculatePatternMessagePrice_REST" />
  </wsdl:message>
  <wsdl:message name="CalculatePatternMessagePrice_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:CalculatePatternMessagePrice_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="CalculatePatternMessagePriceSoapIn">
    <wsdl:part name="parameters" element="tns:CalculatePatternMessagePrice" />
  </wsdl:message>
  <wsdl:message name="CalculatePatternMessagePriceSoapOut">
    <wsdl:part name="parameters" element="tns:CalculatePatternMessagePriceResponse" />
  </wsdl:message>
  <wsdl:message name="Statistics_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:Statistics_REST" />
  </wsdl:message>
  <wsdl:message name="Statistics_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:Statistics_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="StatisticsSoapIn">
    <wsdl:part name="parameters" element="tns:Statistics" />
  </wsdl:message>
  <wsdl:message name="StatisticsSoapOut">
    <wsdl:part name="parameters" element="tns:StatisticsResponse" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliverySetActive_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:RelayMessageDeliverySetActive_REST" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliverySetActive_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:RelayMessageDeliverySetActive_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliverySetActiveSoapIn">
    <wsdl:part name="parameters" element="tns:RelayMessageDeliverySetActive" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliverySetActiveSoapOut">
    <wsdl:part name="parameters" element="tns:RelayMessageDeliverySetActiveResponse" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryCreate_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:RelayMessageDeliveryCreate_REST" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryCreate_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:RelayMessageDeliveryCreate_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryCreateSoapIn">
    <wsdl:part name="parameters" element="tns:RelayMessageDeliveryCreate" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryCreateSoapOut">
    <wsdl:part name="parameters" element="tns:RelayMessageDeliveryCreateResponse" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryList_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:RelayMessageDeliveryList_REST" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryList_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:RelayMessageDeliveryList_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryListSoapIn">
    <wsdl:part name="parameters" element="tns:RelayMessageDeliveryList" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryListSoapOut">
    <wsdl:part name="parameters" element="tns:RelayMessageDeliveryListResponse" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageSetActive_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:RelayRecieveMessageSetActive_REST" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageSetActive_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:RelayRecieveMessageSetActive_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageSetActiveSoapIn">
    <wsdl:part name="parameters" element="tns:RelayRecieveMessageSetActive" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageSetActiveSoapOut">
    <wsdl:part name="parameters" element="tns:RelayRecieveMessageSetActiveResponse" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageCreate_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:RelayRecieveMessageCreate_REST" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageCreate_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:RelayRecieveMessageCreate_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageCreateSoapIn">
    <wsdl:part name="parameters" element="tns:RelayRecieveMessageCreate" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageCreateSoapOut">
    <wsdl:part name="parameters" element="tns:RelayRecieveMessageCreateResponse" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageList_RESTSoapIn">
    <wsdl:part name="parameters" element="tns:RelayRecieveMessageList_REST" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageList_RESTSoapOut">
    <wsdl:part name="parameters" element="tns:RelayRecieveMessageList_RESTResponse" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageListSoapIn">
    <wsdl:part name="parameters" element="tns:RelayRecieveMessageList" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageListSoapOut">
    <wsdl:part name="parameters" element="tns:RelayRecieveMessageListResponse" />
  </wsdl:message>
  <wsdl:message name="GetServerDateTime_RESTHttpGetIn" />
  <wsdl:message name="GetServerDateTime_RESTHttpGetOut" />
  <wsdl:message name="GetServerDateTimeHttpGetIn" />
  <wsdl:message name="GetServerDateTimeHttpGetOut">
    <wsdl:part name="Body" element="tns:dateTime" />
  </wsdl:message>
  <wsdl:message name="ContactGet_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactGet_RESTHttpGetOut" />
  <wsdl:message name="ContactGetHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactGetHttpGetOut">
    <wsdl:part name="Body" element="tns:GetContactResult" />
  </wsdl:message>
  <wsdl:message name="ContactListUpdates_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactGroupID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactListUpdates_RESTHttpGetOut" />
  <wsdl:message name="ContactListUpdatesHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactGroupID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactListUpdatesHttpGetOut">
    <wsdl:part name="Body" element="tns:ContactListUpdatesResult" />
  </wsdl:message>
  <wsdl:message name="ContactGroupList_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactGroupList_RESTHttpGetOut" />
  <wsdl:message name="ContactGroupListHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactGroupListHttpGetOut">
    <wsdl:part name="Body" element="tns:ContactGroupListResult" />
  </wsdl:message>
  <wsdl:message name="ContactList_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactGroupID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactList_RESTHttpGetOut" />
  <wsdl:message name="ContactListHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactGroupID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactListHttpGetOut">
    <wsdl:part name="Body" element="tns:ContactListResult" />
  </wsdl:message>
  <wsdl:message name="ContactCreate_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactGroupID" type="s:string" />
    <wsdl:part name="Active" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="FName" type="s:string" />
    <wsdl:part name="LName" type="s:string" />
    <wsdl:part name="GenderType" type="s:string" />
    <wsdl:part name="CompanyTitle" type="s:string" />
    <wsdl:part name="JobTitle" type="s:string" />
    <wsdl:part name="Email" type="s:string" />
    <wsdl:part name="CityName" type="s:string" />
    <wsdl:part name="AddressText" type="s:string" />
    <wsdl:part name="BornDate" type="s:string" />
    <wsdl:part name="AnniversaryDate" type="s:string" />
    <wsdl:part name="CustomText1" type="s:string" />
    <wsdl:part name="CustomText2" type="s:string" />
    <wsdl:part name="CustomText3" type="s:string" />
    <wsdl:part name="CustomText4" type="s:string" />
    <wsdl:part name="CustomText5" type="s:string" />
    <wsdl:part name="CustomText6" type="s:string" />
    <wsdl:part name="CustomDate1" type="s:string" />
    <wsdl:part name="CustomDate2" type="s:string" />
    <wsdl:part name="CustomDate3" type="s:string" />
    <wsdl:part name="Labels" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactCreate_RESTHttpGetOut" />
  <wsdl:message name="ContactEdit_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactID" type="s:string" />
    <wsdl:part name="ContactGroupID" type="s:string" />
    <wsdl:part name="Active" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="FName" type="s:string" />
    <wsdl:part name="LName" type="s:string" />
    <wsdl:part name="GenderType" type="s:string" />
    <wsdl:part name="CompanyTitle" type="s:string" />
    <wsdl:part name="JobTitle" type="s:string" />
    <wsdl:part name="Email" type="s:string" />
    <wsdl:part name="CityName" type="s:string" />
    <wsdl:part name="AddressText" type="s:string" />
    <wsdl:part name="BornDate" type="s:string" />
    <wsdl:part name="AnniversaryDate" type="s:string" />
    <wsdl:part name="CustomText1" type="s:string" />
    <wsdl:part name="CustomText2" type="s:string" />
    <wsdl:part name="CustomText3" type="s:string" />
    <wsdl:part name="CustomText4" type="s:string" />
    <wsdl:part name="CustomText5" type="s:string" />
    <wsdl:part name="CustomText6" type="s:string" />
    <wsdl:part name="CustomDate1" type="s:string" />
    <wsdl:part name="CustomDate2" type="s:string" />
    <wsdl:part name="CustomDate3" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactEdit_RESTHttpGetOut" />
  <wsdl:message name="ContactDelete_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactDelete_RESTHttpGetOut" />
  <wsdl:message name="ContactDeleteHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactDeleteHttpGetOut">
    <wsdl:part name="Body" element="tns:ContactDeleteResult" />
  </wsdl:message>
  <wsdl:message name="CourseSetActive_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="CourseID" type="s:string" />
    <wsdl:part name="Active" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseSetActive_RESTHttpGetOut" />
  <wsdl:message name="CourseSetActiveHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="CourseID" type="s:string" />
    <wsdl:part name="Active" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseSetActiveHttpGetOut">
    <wsdl:part name="Body" element="tns:Status" />
  </wsdl:message>
  <wsdl:message name="CourseCreateSimple_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="CourseGroupID" type="s:string" />
    <wsdl:part name="CourseType" type="s:string" />
    <wsdl:part name="CourseDateTime" type="s:string" />
    <wsdl:part name="Title" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseCreateSimple_RESTHttpGetOut" />
  <wsdl:message name="CourseCreateSimpleHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="CourseGroupID" type="s:string" />
    <wsdl:part name="CourseType" type="s:string" />
    <wsdl:part name="CourseDateTime" type="s:string" />
    <wsdl:part name="Title" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseCreateSimpleHttpGetOut">
    <wsdl:part name="Body" element="tns:CourseCreateResult" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithAvanak_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="CourseGroupID" type="s:string" />
    <wsdl:part name="CourseType" type="s:string" />
    <wsdl:part name="CourseDateTime" type="s:string" />
    <wsdl:part name="Title" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="AvanakMessageText" type="s:string" />
    <wsdl:part name="SpeakerType" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithAvanak_RESTHttpGetOut" />
  <wsdl:message name="CourseCreateWithAvanakHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="CourseGroupID" type="s:string" />
    <wsdl:part name="CourseType" type="s:string" />
    <wsdl:part name="CourseDateTime" type="s:string" />
    <wsdl:part name="Title" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="AvanakMessageText" type="s:string" />
    <wsdl:part name="SpeakerType" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithAvanakHttpGetOut">
    <wsdl:part name="Body" element="tns:CourseCreateResult" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithBackupLine_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="CourseGroupID" type="s:string" />
    <wsdl:part name="CourseType" type="s:string" />
    <wsdl:part name="CourseDateTime" type="s:string" />
    <wsdl:part name="Title" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="BackupLineNumber" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithBackupLine_RESTHttpGetOut" />
  <wsdl:message name="CourseCreateWithBackupLineHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="CourseGroupID" type="s:string" />
    <wsdl:part name="CourseType" type="s:string" />
    <wsdl:part name="CourseDateTime" type="s:string" />
    <wsdl:part name="Title" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="BackupLineNumber" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithBackupLineHttpGetOut">
    <wsdl:part name="Body" element="tns:CourseCreateResult" />
  </wsdl:message>
  <wsdl:message name="CourseList_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseList_RESTHttpGetOut" />
  <wsdl:message name="CourseListHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseListHttpGetOut">
    <wsdl:part name="Body" element="tns:CourseListResult" />
  </wsdl:message>
  <wsdl:message name="CourseGroupCreate_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Title" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseGroupCreate_RESTHttpGetOut" />
  <wsdl:message name="CourseGroupCreateHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Title" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseGroupCreateHttpGetOut">
    <wsdl:part name="Body" element="tns:CourseGroupCreateResult" />
  </wsdl:message>
  <wsdl:message name="CourseGroupList_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseGroupList_RESTHttpGetOut" />
  <wsdl:message name="CourseGroupListHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseGroupListHttpGetOut">
    <wsdl:part name="Body" element="tns:CourseGroupListResult" />
  </wsdl:message>
  <wsdl:message name="SendSimple_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="Mobiles" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendSimple_RESTHttpGetOut" />
  <wsdl:message name="SendWithAvanak_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="AvanakMessageText" type="s:string" />
    <wsdl:part name="SpeakerType" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="Mobiles" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendWithAvanak_RESTHttpGetOut" />
  <wsdl:message name="SendWithBackupLine_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="BackupLineNumber" type="s:string" />
    <wsdl:part name="Mobiles" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendWithBackupLine_RESTHttpGetOut" />
  <wsdl:message name="SendWithPattern_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="PatternCodeID" type="s:string" />
    <wsdl:part name="PatternValues" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendWithPattern_RESTHttpGetOut" />
  <wsdl:message name="SendWithPatternHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="PatternCodeID" type="s:string" />
    <wsdl:part name="PatternValues" type="s1:StringArray" />
  </wsdl:message>
  <wsdl:message name="SendWithPatternHttpGetOut">
    <wsdl:part name="Body" element="tns:SendResult" />
  </wsdl:message>
  <wsdl:message name="SendQuickOTP_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="CodeLength" type="s:string" />
    <wsdl:part name="OptionalCode" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendQuickOTP_RESTHttpGetOut" />
  <wsdl:message name="SendQuickOTPHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="CodeLength" type="s:string" />
    <wsdl:part name="OptionalCode" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendQuickOTPHttpGetOut">
    <wsdl:part name="Body" element="tns:SendOTPResult" />
  </wsdl:message>
  <wsdl:message name="SendOTP_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="CodeLength" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendOTP_RESTHttpGetOut" />
  <wsdl:message name="SendOTPHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="CodeLength" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendOTPHttpGetOut">
    <wsdl:part name="Body" element="tns:SendOTPResult" />
  </wsdl:message>
  <wsdl:message name="SendBank_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="BankID" type="s:string" />
    <wsdl:part name="OrderType" type="s:string" />
    <wsdl:part name="FromRow" type="s:string" />
    <wsdl:part name="Count" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendBank_RESTHttpGetOut" />
  <wsdl:message name="SendBankHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="BankID" type="s:string" />
    <wsdl:part name="OrderType" type="s:string" />
    <wsdl:part name="FromRow" type="s:string" />
    <wsdl:part name="Count" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendBankHttpGetOut">
    <wsdl:part name="Body" element="tns:SendResult" />
  </wsdl:message>
  <wsdl:message name="SendBankWithAvanak_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="AvanakMessageText" type="s:string" />
    <wsdl:part name="SpeakerType" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="BankID" type="s:string" />
    <wsdl:part name="OrderType" type="s:string" />
    <wsdl:part name="FromRow" type="s:string" />
    <wsdl:part name="Count" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendBankWithAvanak_RESTHttpGetOut" />
  <wsdl:message name="SendBankWithAvanakHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="AvanakMessageText" type="s:string" />
    <wsdl:part name="SpeakerType" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="BankID" type="s:string" />
    <wsdl:part name="OrderType" type="s:string" />
    <wsdl:part name="FromRow" type="s:string" />
    <wsdl:part name="Count" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendBankWithAvanakHttpGetOut">
    <wsdl:part name="Body" element="tns:SendResult" />
  </wsdl:message>
  <wsdl:message name="SendBankWithBackupLine_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="BackupLineNumber" type="s:string" />
    <wsdl:part name="BankID" type="s:string" />
    <wsdl:part name="OrderType" type="s:string" />
    <wsdl:part name="FromRow" type="s:string" />
    <wsdl:part name="Count" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendBankWithBackupLine_RESTHttpGetOut" />
  <wsdl:message name="SendBankWithBackupLineHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="BackupLineNumber" type="s:string" />
    <wsdl:part name="BankID" type="s:string" />
    <wsdl:part name="OrderType" type="s:string" />
    <wsdl:part name="FromRow" type="s:string" />
    <wsdl:part name="Count" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendBankWithBackupLineHttpGetOut">
    <wsdl:part name="Body" element="tns:SendResult" />
  </wsdl:message>
  <wsdl:message name="GetBankTree_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetBankTree_RESTHttpGetOut" />
  <wsdl:message name="GetBankTreeHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetBankTreeHttpGetOut">
    <wsdl:part name="Body" element="tns:BankTreeResult" />
  </wsdl:message>
  <wsdl:message name="RecieveNewMessages_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Count" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RecieveNewMessages_RESTHttpGetOut" />
  <wsdl:message name="RecieveNewMessagesHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Count" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RecieveNewMessagesHttpGetOut">
    <wsdl:part name="Body" element="tns:ReceiveResult" />
  </wsdl:message>
  <wsdl:message name="RecieveMessages_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="FromDateTime" type="s:string" />
    <wsdl:part name="ToDateTime" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RecieveMessages_RESTHttpGetOut" />
  <wsdl:message name="RecieveMessagesHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="FromDateTime" type="s:string" />
    <wsdl:part name="ToDateTime" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RecieveMessagesHttpGetOut">
    <wsdl:part name="Body" element="tns:ReceiveResult" />
  </wsdl:message>
  <wsdl:message name="GetMessage_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="MessageID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetMessage_RESTHttpGetOut" />
  <wsdl:message name="GetMessageHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="MessageID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetMessageHttpGetOut">
    <wsdl:part name="Body" element="tns:MessageResult" />
  </wsdl:message>
  <wsdl:message name="GetMessages_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="FromDateTime" type="s:string" />
    <wsdl:part name="ToDateTime" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetMessages_RESTHttpGetOut" />
  <wsdl:message name="GetMessagesHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="FromDateTime" type="s:string" />
    <wsdl:part name="ToDateTime" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetMessagesHttpGetOut">
    <wsdl:part name="Body" element="tns:MessagesResult" />
  </wsdl:message>
  <wsdl:message name="GetDelivery_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="MessageID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetDelivery_RESTHttpGetOut" />
  <wsdl:message name="GetDeliveryHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="MessageID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetDeliveryHttpGetOut">
    <wsdl:part name="Body" element="tns:DeliveryResult" />
  </wsdl:message>
  <wsdl:message name="GetDeliveries_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ListMessageID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetDeliveries_RESTHttpGetOut" />
  <wsdl:message name="AccountStatus_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="AccountStatus_RESTHttpGetOut" />
  <wsdl:message name="AccountStatusHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="AccountStatusHttpGetOut">
    <wsdl:part name="Body" element="tns:AccountStatusResult" />
  </wsdl:message>
  <wsdl:message name="CalculateMessagePrice_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="Mobiles" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CalculateMessagePrice_RESTHttpGetOut" />
  <wsdl:message name="CalculatePatternMessagePrice_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="PatternCodeID" type="s:string" />
    <wsdl:part name="PatternValues" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CalculatePatternMessagePrice_RESTHttpGetOut" />
  <wsdl:message name="CalculatePatternMessagePriceHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="PatternCodeID" type="s:string" />
    <wsdl:part name="PatternValues" type="s1:StringArray" />
  </wsdl:message>
  <wsdl:message name="CalculatePatternMessagePriceHttpGetOut">
    <wsdl:part name="Body" element="tns:int" />
  </wsdl:message>
  <wsdl:message name="Statistics_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="FromDate" type="s:string" />
    <wsdl:part name="ToDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Statistics_RESTHttpGetOut" />
  <wsdl:message name="StatisticsHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="FromDate" type="s:string" />
    <wsdl:part name="ToDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="StatisticsHttpGetOut">
    <wsdl:part name="Body" element="tns:StatisticsResult" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliverySetActive_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="RelayMessageDeliveryID" type="s:string" />
    <wsdl:part name="Active" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliverySetActive_RESTHttpGetOut" />
  <wsdl:message name="RelayMessageDeliverySetActiveHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="RelayMessageDeliveryID" type="s:string" />
    <wsdl:part name="Active" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliverySetActiveHttpGetOut">
    <wsdl:part name="Body" element="tns:Status" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryCreate_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="URLAddress" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryCreate_RESTHttpGetOut" />
  <wsdl:message name="RelayMessageDeliveryCreateHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="URLAddress" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryCreateHttpGetOut">
    <wsdl:part name="Body" element="tns:RelayMessageDeliveryCreateResult" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryList_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryList_RESTHttpGetOut" />
  <wsdl:message name="RelayMessageDeliveryListHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryListHttpGetOut">
    <wsdl:part name="Body" element="tns:RelayMessageDeliveryListResult" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageSetActive_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="RelayRecieveMessageID" type="s:string" />
    <wsdl:part name="Active" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageSetActive_RESTHttpGetOut" />
  <wsdl:message name="RelayRecieveMessageSetActiveHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="RelayRecieveMessageID" type="s:string" />
    <wsdl:part name="Active" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageSetActiveHttpGetOut">
    <wsdl:part name="Body" element="tns:Status" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageCreate_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="URLAddress" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageCreate_RESTHttpGetOut" />
  <wsdl:message name="RelayRecieveMessageCreateHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="URLAddress" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageCreateHttpGetOut">
    <wsdl:part name="Body" element="tns:RelayRecieveMessageCreateResult" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageList_RESTHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageList_RESTHttpGetOut" />
  <wsdl:message name="RelayRecieveMessageListHttpGetIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageListHttpGetOut">
    <wsdl:part name="Body" element="tns:RelayRecieveMessageListResult" />
  </wsdl:message>
  <wsdl:message name="GetServerDateTime_RESTHttpPostIn" />
  <wsdl:message name="GetServerDateTime_RESTHttpPostOut" />
  <wsdl:message name="GetServerDateTimeHttpPostIn" />
  <wsdl:message name="GetServerDateTimeHttpPostOut">
    <wsdl:part name="Body" element="tns:dateTime" />
  </wsdl:message>
  <wsdl:message name="ContactGet_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactGet_RESTHttpPostOut" />
  <wsdl:message name="ContactGetHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactGetHttpPostOut">
    <wsdl:part name="Body" element="tns:GetContactResult" />
  </wsdl:message>
  <wsdl:message name="ContactListUpdates_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactGroupID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactListUpdates_RESTHttpPostOut" />
  <wsdl:message name="ContactListUpdatesHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactGroupID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactListUpdatesHttpPostOut">
    <wsdl:part name="Body" element="tns:ContactListUpdatesResult" />
  </wsdl:message>
  <wsdl:message name="ContactGroupList_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactGroupList_RESTHttpPostOut" />
  <wsdl:message name="ContactGroupListHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactGroupListHttpPostOut">
    <wsdl:part name="Body" element="tns:ContactGroupListResult" />
  </wsdl:message>
  <wsdl:message name="ContactList_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactGroupID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactList_RESTHttpPostOut" />
  <wsdl:message name="ContactListHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactGroupID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactListHttpPostOut">
    <wsdl:part name="Body" element="tns:ContactListResult" />
  </wsdl:message>
  <wsdl:message name="ContactCreate_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactGroupID" type="s:string" />
    <wsdl:part name="Active" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="FName" type="s:string" />
    <wsdl:part name="LName" type="s:string" />
    <wsdl:part name="GenderType" type="s:string" />
    <wsdl:part name="CompanyTitle" type="s:string" />
    <wsdl:part name="JobTitle" type="s:string" />
    <wsdl:part name="Email" type="s:string" />
    <wsdl:part name="CityName" type="s:string" />
    <wsdl:part name="AddressText" type="s:string" />
    <wsdl:part name="BornDate" type="s:string" />
    <wsdl:part name="AnniversaryDate" type="s:string" />
    <wsdl:part name="CustomText1" type="s:string" />
    <wsdl:part name="CustomText2" type="s:string" />
    <wsdl:part name="CustomText3" type="s:string" />
    <wsdl:part name="CustomText4" type="s:string" />
    <wsdl:part name="CustomText5" type="s:string" />
    <wsdl:part name="CustomText6" type="s:string" />
    <wsdl:part name="CustomDate1" type="s:string" />
    <wsdl:part name="CustomDate2" type="s:string" />
    <wsdl:part name="CustomDate3" type="s:string" />
    <wsdl:part name="Labels" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactCreate_RESTHttpPostOut" />
  <wsdl:message name="ContactEdit_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactID" type="s:string" />
    <wsdl:part name="ContactGroupID" type="s:string" />
    <wsdl:part name="Active" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="FName" type="s:string" />
    <wsdl:part name="LName" type="s:string" />
    <wsdl:part name="GenderType" type="s:string" />
    <wsdl:part name="CompanyTitle" type="s:string" />
    <wsdl:part name="JobTitle" type="s:string" />
    <wsdl:part name="Email" type="s:string" />
    <wsdl:part name="CityName" type="s:string" />
    <wsdl:part name="AddressText" type="s:string" />
    <wsdl:part name="BornDate" type="s:string" />
    <wsdl:part name="AnniversaryDate" type="s:string" />
    <wsdl:part name="CustomText1" type="s:string" />
    <wsdl:part name="CustomText2" type="s:string" />
    <wsdl:part name="CustomText3" type="s:string" />
    <wsdl:part name="CustomText4" type="s:string" />
    <wsdl:part name="CustomText5" type="s:string" />
    <wsdl:part name="CustomText6" type="s:string" />
    <wsdl:part name="CustomDate1" type="s:string" />
    <wsdl:part name="CustomDate2" type="s:string" />
    <wsdl:part name="CustomDate3" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactEdit_RESTHttpPostOut" />
  <wsdl:message name="ContactDelete_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactDelete_RESTHttpPostOut" />
  <wsdl:message name="ContactDeleteHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ContactID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ContactDeleteHttpPostOut">
    <wsdl:part name="Body" element="tns:ContactDeleteResult" />
  </wsdl:message>
  <wsdl:message name="CourseSetActive_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="CourseID" type="s:string" />
    <wsdl:part name="Active" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseSetActive_RESTHttpPostOut" />
  <wsdl:message name="CourseSetActiveHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="CourseID" type="s:string" />
    <wsdl:part name="Active" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseSetActiveHttpPostOut">
    <wsdl:part name="Body" element="tns:Status" />
  </wsdl:message>
  <wsdl:message name="CourseCreateSimple_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="CourseGroupID" type="s:string" />
    <wsdl:part name="CourseType" type="s:string" />
    <wsdl:part name="CourseDateTime" type="s:string" />
    <wsdl:part name="Title" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseCreateSimple_RESTHttpPostOut" />
  <wsdl:message name="CourseCreateSimpleHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="CourseGroupID" type="s:string" />
    <wsdl:part name="CourseType" type="s:string" />
    <wsdl:part name="CourseDateTime" type="s:string" />
    <wsdl:part name="Title" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseCreateSimpleHttpPostOut">
    <wsdl:part name="Body" element="tns:CourseCreateResult" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithAvanak_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="CourseGroupID" type="s:string" />
    <wsdl:part name="CourseType" type="s:string" />
    <wsdl:part name="CourseDateTime" type="s:string" />
    <wsdl:part name="Title" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="AvanakMessageText" type="s:string" />
    <wsdl:part name="SpeakerType" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithAvanak_RESTHttpPostOut" />
  <wsdl:message name="CourseCreateWithAvanakHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="CourseGroupID" type="s:string" />
    <wsdl:part name="CourseType" type="s:string" />
    <wsdl:part name="CourseDateTime" type="s:string" />
    <wsdl:part name="Title" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="AvanakMessageText" type="s:string" />
    <wsdl:part name="SpeakerType" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithAvanakHttpPostOut">
    <wsdl:part name="Body" element="tns:CourseCreateResult" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithBackupLine_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="CourseGroupID" type="s:string" />
    <wsdl:part name="CourseType" type="s:string" />
    <wsdl:part name="CourseDateTime" type="s:string" />
    <wsdl:part name="Title" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="BackupLineNumber" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithBackupLine_RESTHttpPostOut" />
  <wsdl:message name="CourseCreateWithBackupLineHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="CourseGroupID" type="s:string" />
    <wsdl:part name="CourseType" type="s:string" />
    <wsdl:part name="CourseDateTime" type="s:string" />
    <wsdl:part name="Title" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="BackupLineNumber" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseCreateWithBackupLineHttpPostOut">
    <wsdl:part name="Body" element="tns:CourseCreateResult" />
  </wsdl:message>
  <wsdl:message name="CourseList_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseList_RESTHttpPostOut" />
  <wsdl:message name="CourseListHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseListHttpPostOut">
    <wsdl:part name="Body" element="tns:CourseListResult" />
  </wsdl:message>
  <wsdl:message name="CourseGroupCreate_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Title" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseGroupCreate_RESTHttpPostOut" />
  <wsdl:message name="CourseGroupCreateHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Title" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseGroupCreateHttpPostOut">
    <wsdl:part name="Body" element="tns:CourseGroupCreateResult" />
  </wsdl:message>
  <wsdl:message name="CourseGroupList_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseGroupList_RESTHttpPostOut" />
  <wsdl:message name="CourseGroupListHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CourseGroupListHttpPostOut">
    <wsdl:part name="Body" element="tns:CourseGroupListResult" />
  </wsdl:message>
  <wsdl:message name="SendSimple_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="Mobiles" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendSimple_RESTHttpPostOut" />
  <wsdl:message name="SendWithAvanak_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="AvanakMessageText" type="s:string" />
    <wsdl:part name="SpeakerType" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="Mobiles" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendWithAvanak_RESTHttpPostOut" />
  <wsdl:message name="SendWithBackupLine_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="BackupLineNumber" type="s:string" />
    <wsdl:part name="Mobiles" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendWithBackupLine_RESTHttpPostOut" />
  <wsdl:message name="SendWithPattern_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="PatternCodeID" type="s:string" />
    <wsdl:part name="PatternValues" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendWithPattern_RESTHttpPostOut" />
  <wsdl:message name="SendWithPatternHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="PatternCodeID" type="s:string" />
    <wsdl:part name="PatternValues" type="s1:StringArray" />
  </wsdl:message>
  <wsdl:message name="SendWithPatternHttpPostOut">
    <wsdl:part name="Body" element="tns:SendResult" />
  </wsdl:message>
  <wsdl:message name="SendQuickOTP_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="CodeLength" type="s:string" />
    <wsdl:part name="OptionalCode" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendQuickOTP_RESTHttpPostOut" />
  <wsdl:message name="SendQuickOTPHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="CodeLength" type="s:string" />
    <wsdl:part name="OptionalCode" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendQuickOTPHttpPostOut">
    <wsdl:part name="Body" element="tns:SendOTPResult" />
  </wsdl:message>
  <wsdl:message name="SendOTP_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="CodeLength" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendOTP_RESTHttpPostOut" />
  <wsdl:message name="SendOTPHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="CodeLength" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendOTPHttpPostOut">
    <wsdl:part name="Body" element="tns:SendOTPResult" />
  </wsdl:message>
  <wsdl:message name="SendBank_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="BankID" type="s:string" />
    <wsdl:part name="OrderType" type="s:string" />
    <wsdl:part name="FromRow" type="s:string" />
    <wsdl:part name="Count" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendBank_RESTHttpPostOut" />
  <wsdl:message name="SendBankHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="BankID" type="s:string" />
    <wsdl:part name="OrderType" type="s:string" />
    <wsdl:part name="FromRow" type="s:string" />
    <wsdl:part name="Count" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendBankHttpPostOut">
    <wsdl:part name="Body" element="tns:SendResult" />
  </wsdl:message>
  <wsdl:message name="SendBankWithAvanak_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="AvanakMessageText" type="s:string" />
    <wsdl:part name="SpeakerType" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="BankID" type="s:string" />
    <wsdl:part name="OrderType" type="s:string" />
    <wsdl:part name="FromRow" type="s:string" />
    <wsdl:part name="Count" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendBankWithAvanak_RESTHttpPostOut" />
  <wsdl:message name="SendBankWithAvanakHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="AvanakMessageText" type="s:string" />
    <wsdl:part name="SpeakerType" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="BankID" type="s:string" />
    <wsdl:part name="OrderType" type="s:string" />
    <wsdl:part name="FromRow" type="s:string" />
    <wsdl:part name="Count" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendBankWithAvanakHttpPostOut">
    <wsdl:part name="Body" element="tns:SendResult" />
  </wsdl:message>
  <wsdl:message name="SendBankWithBackupLine_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="BackupLineNumber" type="s:string" />
    <wsdl:part name="BankID" type="s:string" />
    <wsdl:part name="OrderType" type="s:string" />
    <wsdl:part name="FromRow" type="s:string" />
    <wsdl:part name="Count" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendBankWithBackupLine_RESTHttpPostOut" />
  <wsdl:message name="SendBankWithBackupLineHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SendDateTime" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="BackupLineNumber" type="s:string" />
    <wsdl:part name="BankID" type="s:string" />
    <wsdl:part name="OrderType" type="s:string" />
    <wsdl:part name="FromRow" type="s:string" />
    <wsdl:part name="Count" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SendBankWithBackupLineHttpPostOut">
    <wsdl:part name="Body" element="tns:SendResult" />
  </wsdl:message>
  <wsdl:message name="GetBankTree_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetBankTree_RESTHttpPostOut" />
  <wsdl:message name="GetBankTreeHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetBankTreeHttpPostOut">
    <wsdl:part name="Body" element="tns:BankTreeResult" />
  </wsdl:message>
  <wsdl:message name="RecieveNewMessages_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Count" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RecieveNewMessages_RESTHttpPostOut" />
  <wsdl:message name="RecieveNewMessagesHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Count" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RecieveNewMessagesHttpPostOut">
    <wsdl:part name="Body" element="tns:ReceiveResult" />
  </wsdl:message>
  <wsdl:message name="RecieveMessages_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="FromDateTime" type="s:string" />
    <wsdl:part name="ToDateTime" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RecieveMessages_RESTHttpPostOut" />
  <wsdl:message name="RecieveMessagesHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="FromDateTime" type="s:string" />
    <wsdl:part name="ToDateTime" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RecieveMessagesHttpPostOut">
    <wsdl:part name="Body" element="tns:ReceiveResult" />
  </wsdl:message>
  <wsdl:message name="GetMessage_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="MessageID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetMessage_RESTHttpPostOut" />
  <wsdl:message name="GetMessageHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="MessageID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetMessageHttpPostOut">
    <wsdl:part name="Body" element="tns:MessageResult" />
  </wsdl:message>
  <wsdl:message name="GetMessages_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="FromDateTime" type="s:string" />
    <wsdl:part name="ToDateTime" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetMessages_RESTHttpPostOut" />
  <wsdl:message name="GetMessagesHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="FromDateTime" type="s:string" />
    <wsdl:part name="ToDateTime" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetMessagesHttpPostOut">
    <wsdl:part name="Body" element="tns:MessagesResult" />
  </wsdl:message>
  <wsdl:message name="GetDelivery_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="MessageID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetDelivery_RESTHttpPostOut" />
  <wsdl:message name="GetDeliveryHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="MessageID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetDeliveryHttpPostOut">
    <wsdl:part name="Body" element="tns:DeliveryResult" />
  </wsdl:message>
  <wsdl:message name="GetDeliveries_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="ListMessageID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetDeliveries_RESTHttpPostOut" />
  <wsdl:message name="AccountStatus_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="AccountStatus_RESTHttpPostOut" />
  <wsdl:message name="AccountStatusHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="AccountStatusHttpPostOut">
    <wsdl:part name="Body" element="tns:AccountStatusResult" />
  </wsdl:message>
  <wsdl:message name="CalculateMessagePrice_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="SMSMessageText" type="s:string" />
    <wsdl:part name="LineNumber" type="s:string" />
    <wsdl:part name="Mobiles" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CalculateMessagePrice_RESTHttpPostOut" />
  <wsdl:message name="CalculatePatternMessagePrice_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="PatternCodeID" type="s:string" />
    <wsdl:part name="PatternValues" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CalculatePatternMessagePrice_RESTHttpPostOut" />
  <wsdl:message name="CalculatePatternMessagePriceHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Mobile" type="s:string" />
    <wsdl:part name="PatternCodeID" type="s:string" />
    <wsdl:part name="PatternValues" type="s1:StringArray" />
  </wsdl:message>
  <wsdl:message name="CalculatePatternMessagePriceHttpPostOut">
    <wsdl:part name="Body" element="tns:int" />
  </wsdl:message>
  <wsdl:message name="Statistics_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="FromDate" type="s:string" />
    <wsdl:part name="ToDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Statistics_RESTHttpPostOut" />
  <wsdl:message name="StatisticsHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="FromDate" type="s:string" />
    <wsdl:part name="ToDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="StatisticsHttpPostOut">
    <wsdl:part name="Body" element="tns:StatisticsResult" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliverySetActive_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="RelayMessageDeliveryID" type="s:string" />
    <wsdl:part name="Active" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliverySetActive_RESTHttpPostOut" />
  <wsdl:message name="RelayMessageDeliverySetActiveHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="RelayMessageDeliveryID" type="s:string" />
    <wsdl:part name="Active" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliverySetActiveHttpPostOut">
    <wsdl:part name="Body" element="tns:Status" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryCreate_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="URLAddress" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryCreate_RESTHttpPostOut" />
  <wsdl:message name="RelayMessageDeliveryCreateHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="URLAddress" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryCreateHttpPostOut">
    <wsdl:part name="Body" element="tns:RelayMessageDeliveryCreateResult" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryList_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryList_RESTHttpPostOut" />
  <wsdl:message name="RelayMessageDeliveryListHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayMessageDeliveryListHttpPostOut">
    <wsdl:part name="Body" element="tns:RelayMessageDeliveryListResult" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageSetActive_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="RelayRecieveMessageID" type="s:string" />
    <wsdl:part name="Active" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageSetActive_RESTHttpPostOut" />
  <wsdl:message name="RelayRecieveMessageSetActiveHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="RelayRecieveMessageID" type="s:string" />
    <wsdl:part name="Active" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageSetActiveHttpPostOut">
    <wsdl:part name="Body" element="tns:Status" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageCreate_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="URLAddress" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageCreate_RESTHttpPostOut" />
  <wsdl:message name="RelayRecieveMessageCreateHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="URLAddress" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageCreateHttpPostOut">
    <wsdl:part name="Body" element="tns:RelayRecieveMessageCreateResult" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageList_RESTHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageList_RESTHttpPostOut" />
  <wsdl:message name="RelayRecieveMessageListHttpPostIn">
    <wsdl:part name="UserName" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RelayRecieveMessageListHttpPostOut">
    <wsdl:part name="Body" element="tns:RelayRecieveMessageListResult" />
  </wsdl:message>
  <wsdl:portType name="AmootSMSWebService2Soap">
    <wsdl:operation name="GetServerDateTime_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetServerDateTime_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetServerDateTime_RESTSoapIn" />
      <wsdl:output message="tns:GetServerDateTime_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetServerDateTime">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetServerDateTime" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetServerDateTimeSoapIn" />
      <wsdl:output message="tns:GetServerDateTimeSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactGet_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactGet_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactGet_RESTSoapIn" />
      <wsdl:output message="tns:ContactGet_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactGet">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactGet" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactGetSoapIn" />
      <wsdl:output message="tns:ContactGetSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactListUpdates_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactListUpdates_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactListUpdates_RESTSoapIn" />
      <wsdl:output message="tns:ContactListUpdates_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactListUpdates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactListUpdates" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactListUpdatesSoapIn" />
      <wsdl:output message="tns:ContactListUpdatesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactGroupList_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactGroupList_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactGroupList_RESTSoapIn" />
      <wsdl:output message="tns:ContactGroupList_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactGroupList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactGroupList" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactGroupListSoapIn" />
      <wsdl:output message="tns:ContactGroupListSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactList_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactList_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactList_RESTSoapIn" />
      <wsdl:output message="tns:ContactList_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactList" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactListSoapIn" />
      <wsdl:output message="tns:ContactListSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactCreate_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactCreate_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactCreate_RESTSoapIn" />
      <wsdl:output message="tns:ContactCreate_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactCreate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactCreate" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactCreateSoapIn" />
      <wsdl:output message="tns:ContactCreateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactEdit_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactEdit_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactEdit_RESTSoapIn" />
      <wsdl:output message="tns:ContactEdit_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactEdit">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactEdit" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactEditSoapIn" />
      <wsdl:output message="tns:ContactEditSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactDelete_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactDelete_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactDelete_RESTSoapIn" />
      <wsdl:output message="tns:ContactDelete_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactDelete">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactDelete" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactDeleteSoapIn" />
      <wsdl:output message="tns:ContactDeleteSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseSetActive_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseSetActive_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseSetActive_RESTSoapIn" />
      <wsdl:output message="tns:CourseSetActive_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseSetActive">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseSetActive" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseSetActiveSoapIn" />
      <wsdl:output message="tns:CourseSetActiveSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateSimple_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseCreateSimple_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseCreateSimple_RESTSoapIn" />
      <wsdl:output message="tns:CourseCreateSimple_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateSimple">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseCreateSimple" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseCreateSimpleSoapIn" />
      <wsdl:output message="tns:CourseCreateSimpleSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithAvanak_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseCreateWithAvanak_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseCreateWithAvanak_RESTSoapIn" />
      <wsdl:output message="tns:CourseCreateWithAvanak_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithAvanak">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseCreateWithAvanak" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseCreateWithAvanakSoapIn" />
      <wsdl:output message="tns:CourseCreateWithAvanakSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithBackupLine_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseCreateWithBackupLine_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseCreateWithBackupLine_RESTSoapIn" />
      <wsdl:output message="tns:CourseCreateWithBackupLine_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithBackupLine">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseCreateWithBackupLine" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseCreateWithBackupLineSoapIn" />
      <wsdl:output message="tns:CourseCreateWithBackupLineSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseList_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseList_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseList_RESTSoapIn" />
      <wsdl:output message="tns:CourseList_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseList" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseListSoapIn" />
      <wsdl:output message="tns:CourseListSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseGroupCreate_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseGroupCreate_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseGroupCreate_RESTSoapIn" />
      <wsdl:output message="tns:CourseGroupCreate_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseGroupCreate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseGroupCreate" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseGroupCreateSoapIn" />
      <wsdl:output message="tns:CourseGroupCreateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseGroupList_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseGroupList_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseGroupList_RESTSoapIn" />
      <wsdl:output message="tns:CourseGroupList_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseGroupList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseGroupList" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseGroupListSoapIn" />
      <wsdl:output message="tns:CourseGroupListSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SendSimple_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendSimple_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendSimple_RESTSoapIn" />
      <wsdl:output message="tns:SendSimple_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SendSimple">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendSimple" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendSimpleSoapIn" />
      <wsdl:output message="tns:SendSimpleSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SendWithAvanak_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendWithAvanak_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendWithAvanak_RESTSoapIn" />
      <wsdl:output message="tns:SendWithAvanak_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SendWithAvanak">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendWithAvanak" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendWithAvanakSoapIn" />
      <wsdl:output message="tns:SendWithAvanakSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SendWithBackupLine_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendWithBackupLine_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendWithBackupLine_RESTSoapIn" />
      <wsdl:output message="tns:SendWithBackupLine_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SendWithBackupLine">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendWithBackupLine" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendWithBackupLineSoapIn" />
      <wsdl:output message="tns:SendWithBackupLineSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SendWithPattern_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendWithPattern_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendWithPattern_RESTSoapIn" />
      <wsdl:output message="tns:SendWithPattern_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SendWithPattern">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendWithPattern" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendWithPatternSoapIn" />
      <wsdl:output message="tns:SendWithPatternSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SendQuickOTP_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendQuickOTP_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendQuickOTP_RESTSoapIn" />
      <wsdl:output message="tns:SendQuickOTP_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SendQuickOTP">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendQuickOTP" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendQuickOTPSoapIn" />
      <wsdl:output message="tns:SendQuickOTPSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SendOTP_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendOTP_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendOTP_RESTSoapIn" />
      <wsdl:output message="tns:SendOTP_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SendOTP">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendOTP" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendOTPSoapIn" />
      <wsdl:output message="tns:SendOTPSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SendBank_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendBank_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendBank_RESTSoapIn" />
      <wsdl:output message="tns:SendBank_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SendBank">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendBank" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendBankSoapIn" />
      <wsdl:output message="tns:SendBankSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SendBankWithAvanak_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendBankWithAvanak_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendBankWithAvanak_RESTSoapIn" />
      <wsdl:output message="tns:SendBankWithAvanak_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SendBankWithAvanak">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendBankWithAvanak" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendBankWithAvanakSoapIn" />
      <wsdl:output message="tns:SendBankWithAvanakSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SendBankWithBackupLine_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendBankWithBackupLine_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendBankWithBackupLine_RESTSoapIn" />
      <wsdl:output message="tns:SendBankWithBackupLine_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SendBankWithBackupLine">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendBankWithBackupLine" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendBankWithBackupLineSoapIn" />
      <wsdl:output message="tns:SendBankWithBackupLineSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetBankTree_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetBankTree_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetBankTree_RESTSoapIn" />
      <wsdl:output message="tns:GetBankTree_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetBankTree">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetBankTree" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetBankTreeSoapIn" />
      <wsdl:output message="tns:GetBankTreeSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RecieveNewMessages_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RecieveNewMessages_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RecieveNewMessages_RESTSoapIn" />
      <wsdl:output message="tns:RecieveNewMessages_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RecieveNewMessages">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RecieveNewMessages" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RecieveNewMessagesSoapIn" />
      <wsdl:output message="tns:RecieveNewMessagesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RecieveMessages_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RecieveMessages_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RecieveMessages_RESTSoapIn" />
      <wsdl:output message="tns:RecieveMessages_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RecieveMessages">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RecieveMessages" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RecieveMessagesSoapIn" />
      <wsdl:output message="tns:RecieveMessagesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetMessage_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetMessage_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetMessage_RESTSoapIn" />
      <wsdl:output message="tns:GetMessage_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetMessage">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetMessage" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetMessageSoapIn" />
      <wsdl:output message="tns:GetMessageSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetMessages_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetMessage_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetMessages_RESTSoapIn" />
      <wsdl:output message="tns:GetMessages_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetMessages">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetMessage" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetMessagesSoapIn" />
      <wsdl:output message="tns:GetMessagesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetDelivery_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetDelivery_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetDelivery_RESTSoapIn" />
      <wsdl:output message="tns:GetDelivery_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetDelivery">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetDelivery" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetDeliverySoapIn" />
      <wsdl:output message="tns:GetDeliverySoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetDeliveries_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetDeliveries_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetDeliveries_RESTSoapIn" />
      <wsdl:output message="tns:GetDeliveries_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetDeliveries">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetDeliveries" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetDeliveriesSoapIn" />
      <wsdl:output message="tns:GetDeliveriesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="AccountStatus_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=AccountStatus_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:AccountStatus_RESTSoapIn" />
      <wsdl:output message="tns:AccountStatus_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="AccountStatus">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=AccountStatus" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:AccountStatusSoapIn" />
      <wsdl:output message="tns:AccountStatusSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CalculateMessagePrice_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CalculateMessagePrice_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CalculateMessagePrice_RESTSoapIn" />
      <wsdl:output message="tns:CalculateMessagePrice_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CalculateMessagePrice">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CalculateMessagePrice" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CalculateMessagePriceSoapIn" />
      <wsdl:output message="tns:CalculateMessagePriceSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CalculatePatternMessagePrice_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CalculatePatternMessagePrice_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CalculatePatternMessagePrice_RESTSoapIn" />
      <wsdl:output message="tns:CalculatePatternMessagePrice_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CalculatePatternMessagePrice">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CalculatePatternMessagePrice" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CalculatePatternMessagePriceSoapIn" />
      <wsdl:output message="tns:CalculatePatternMessagePriceSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="Statistics_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=Statistics_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:Statistics_RESTSoapIn" />
      <wsdl:output message="tns:Statistics_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="Statistics">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=Statistics" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:StatisticsSoapIn" />
      <wsdl:output message="tns:StatisticsSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliverySetActive_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayMessageDeliverySetActive_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayMessageDeliverySetActive_RESTSoapIn" />
      <wsdl:output message="tns:RelayMessageDeliverySetActive_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliverySetActive">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayMessageDeliverySetActive" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayMessageDeliverySetActiveSoapIn" />
      <wsdl:output message="tns:RelayMessageDeliverySetActiveSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryCreate_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayMessageDeliveryCreate_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayMessageDeliveryCreate_RESTSoapIn" />
      <wsdl:output message="tns:RelayMessageDeliveryCreate_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryCreate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayMessageDeliveryCreate" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayMessageDeliveryCreateSoapIn" />
      <wsdl:output message="tns:RelayMessageDeliveryCreateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryList_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayMessageDeliveryList_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayMessageDeliveryList_RESTSoapIn" />
      <wsdl:output message="tns:RelayMessageDeliveryList_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayMessageDeliveryList" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayMessageDeliveryListSoapIn" />
      <wsdl:output message="tns:RelayMessageDeliveryListSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageSetActive_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayRecieveMessageSetActive_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayRecieveMessageSetActive_RESTSoapIn" />
      <wsdl:output message="tns:RelayRecieveMessageSetActive_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageSetActive">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayRecieveMessageSetActive" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayRecieveMessageSetActiveSoapIn" />
      <wsdl:output message="tns:RelayRecieveMessageSetActiveSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageCreate_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayRecieveMessageCreate_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayRecieveMessageCreate_RESTSoapIn" />
      <wsdl:output message="tns:RelayRecieveMessageCreate_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageCreate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayRecieveMessageCreate" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayRecieveMessageCreateSoapIn" />
      <wsdl:output message="tns:RelayRecieveMessageCreateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageList_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayRecieveMessageList_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayRecieveMessageList_RESTSoapIn" />
      <wsdl:output message="tns:RelayRecieveMessageList_RESTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayRecieveMessageList" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayRecieveMessageListSoapIn" />
      <wsdl:output message="tns:RelayRecieveMessageListSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="AmootSMSWebService2HttpGet">
    <wsdl:operation name="GetServerDateTime_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetServerDateTime_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetServerDateTime_RESTHttpGetIn" />
      <wsdl:output message="tns:GetServerDateTime_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetServerDateTime">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetServerDateTime" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetServerDateTimeHttpGetIn" />
      <wsdl:output message="tns:GetServerDateTimeHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactGet_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactGet_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactGet_RESTHttpGetIn" />
      <wsdl:output message="tns:ContactGet_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactGet">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactGet" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactGetHttpGetIn" />
      <wsdl:output message="tns:ContactGetHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactListUpdates_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactListUpdates_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactListUpdates_RESTHttpGetIn" />
      <wsdl:output message="tns:ContactListUpdates_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactListUpdates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactListUpdates" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactListUpdatesHttpGetIn" />
      <wsdl:output message="tns:ContactListUpdatesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactGroupList_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactGroupList_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactGroupList_RESTHttpGetIn" />
      <wsdl:output message="tns:ContactGroupList_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactGroupList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactGroupList" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactGroupListHttpGetIn" />
      <wsdl:output message="tns:ContactGroupListHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactList_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactList_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactList_RESTHttpGetIn" />
      <wsdl:output message="tns:ContactList_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactList" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactListHttpGetIn" />
      <wsdl:output message="tns:ContactListHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactCreate_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactCreate_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactCreate_RESTHttpGetIn" />
      <wsdl:output message="tns:ContactCreate_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactEdit_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactEdit_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactEdit_RESTHttpGetIn" />
      <wsdl:output message="tns:ContactEdit_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactDelete_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactDelete_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactDelete_RESTHttpGetIn" />
      <wsdl:output message="tns:ContactDelete_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactDelete">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactDelete" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactDeleteHttpGetIn" />
      <wsdl:output message="tns:ContactDeleteHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseSetActive_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseSetActive_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseSetActive_RESTHttpGetIn" />
      <wsdl:output message="tns:CourseSetActive_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseSetActive">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseSetActive" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseSetActiveHttpGetIn" />
      <wsdl:output message="tns:CourseSetActiveHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateSimple_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseCreateSimple_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseCreateSimple_RESTHttpGetIn" />
      <wsdl:output message="tns:CourseCreateSimple_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateSimple">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseCreateSimple" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseCreateSimpleHttpGetIn" />
      <wsdl:output message="tns:CourseCreateSimpleHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithAvanak_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseCreateWithAvanak_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseCreateWithAvanak_RESTHttpGetIn" />
      <wsdl:output message="tns:CourseCreateWithAvanak_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithAvanak">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseCreateWithAvanak" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseCreateWithAvanakHttpGetIn" />
      <wsdl:output message="tns:CourseCreateWithAvanakHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithBackupLine_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseCreateWithBackupLine_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseCreateWithBackupLine_RESTHttpGetIn" />
      <wsdl:output message="tns:CourseCreateWithBackupLine_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithBackupLine">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseCreateWithBackupLine" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseCreateWithBackupLineHttpGetIn" />
      <wsdl:output message="tns:CourseCreateWithBackupLineHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseList_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseList_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseList_RESTHttpGetIn" />
      <wsdl:output message="tns:CourseList_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseList" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseListHttpGetIn" />
      <wsdl:output message="tns:CourseListHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseGroupCreate_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseGroupCreate_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseGroupCreate_RESTHttpGetIn" />
      <wsdl:output message="tns:CourseGroupCreate_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseGroupCreate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseGroupCreate" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseGroupCreateHttpGetIn" />
      <wsdl:output message="tns:CourseGroupCreateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseGroupList_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseGroupList_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseGroupList_RESTHttpGetIn" />
      <wsdl:output message="tns:CourseGroupList_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseGroupList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseGroupList" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseGroupListHttpGetIn" />
      <wsdl:output message="tns:CourseGroupListHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SendSimple_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendSimple_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendSimple_RESTHttpGetIn" />
      <wsdl:output message="tns:SendSimple_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SendWithAvanak_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendWithAvanak_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendWithAvanak_RESTHttpGetIn" />
      <wsdl:output message="tns:SendWithAvanak_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SendWithBackupLine_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendWithBackupLine_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendWithBackupLine_RESTHttpGetIn" />
      <wsdl:output message="tns:SendWithBackupLine_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SendWithPattern_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendWithPattern_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendWithPattern_RESTHttpGetIn" />
      <wsdl:output message="tns:SendWithPattern_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SendWithPattern">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendWithPattern" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendWithPatternHttpGetIn" />
      <wsdl:output message="tns:SendWithPatternHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SendQuickOTP_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendQuickOTP_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendQuickOTP_RESTHttpGetIn" />
      <wsdl:output message="tns:SendQuickOTP_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SendQuickOTP">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendQuickOTP" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendQuickOTPHttpGetIn" />
      <wsdl:output message="tns:SendQuickOTPHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SendOTP_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendOTP_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendOTP_RESTHttpGetIn" />
      <wsdl:output message="tns:SendOTP_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SendOTP">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendOTP" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendOTPHttpGetIn" />
      <wsdl:output message="tns:SendOTPHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SendBank_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendBank_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendBank_RESTHttpGetIn" />
      <wsdl:output message="tns:SendBank_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SendBank">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendBank" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendBankHttpGetIn" />
      <wsdl:output message="tns:SendBankHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SendBankWithAvanak_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendBankWithAvanak_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendBankWithAvanak_RESTHttpGetIn" />
      <wsdl:output message="tns:SendBankWithAvanak_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SendBankWithAvanak">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendBankWithAvanak" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendBankWithAvanakHttpGetIn" />
      <wsdl:output message="tns:SendBankWithAvanakHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SendBankWithBackupLine_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendBankWithBackupLine_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendBankWithBackupLine_RESTHttpGetIn" />
      <wsdl:output message="tns:SendBankWithBackupLine_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SendBankWithBackupLine">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendBankWithBackupLine" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendBankWithBackupLineHttpGetIn" />
      <wsdl:output message="tns:SendBankWithBackupLineHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetBankTree_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetBankTree_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetBankTree_RESTHttpGetIn" />
      <wsdl:output message="tns:GetBankTree_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetBankTree">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetBankTree" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetBankTreeHttpGetIn" />
      <wsdl:output message="tns:GetBankTreeHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RecieveNewMessages_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RecieveNewMessages_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RecieveNewMessages_RESTHttpGetIn" />
      <wsdl:output message="tns:RecieveNewMessages_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RecieveNewMessages">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RecieveNewMessages" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RecieveNewMessagesHttpGetIn" />
      <wsdl:output message="tns:RecieveNewMessagesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RecieveMessages_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RecieveMessages_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RecieveMessages_RESTHttpGetIn" />
      <wsdl:output message="tns:RecieveMessages_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RecieveMessages">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RecieveMessages" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RecieveMessagesHttpGetIn" />
      <wsdl:output message="tns:RecieveMessagesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetMessage_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetMessage_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetMessage_RESTHttpGetIn" />
      <wsdl:output message="tns:GetMessage_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetMessage">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetMessage" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetMessageHttpGetIn" />
      <wsdl:output message="tns:GetMessageHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetMessages_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetMessage_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetMessages_RESTHttpGetIn" />
      <wsdl:output message="tns:GetMessages_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetMessages">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetMessage" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetMessagesHttpGetIn" />
      <wsdl:output message="tns:GetMessagesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetDelivery_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetDelivery_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetDelivery_RESTHttpGetIn" />
      <wsdl:output message="tns:GetDelivery_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetDelivery">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetDelivery" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetDeliveryHttpGetIn" />
      <wsdl:output message="tns:GetDeliveryHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetDeliveries_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetDeliveries_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetDeliveries_RESTHttpGetIn" />
      <wsdl:output message="tns:GetDeliveries_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="AccountStatus_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=AccountStatus_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:AccountStatus_RESTHttpGetIn" />
      <wsdl:output message="tns:AccountStatus_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="AccountStatus">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=AccountStatus" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:AccountStatusHttpGetIn" />
      <wsdl:output message="tns:AccountStatusHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="CalculateMessagePrice_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CalculateMessagePrice_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CalculateMessagePrice_RESTHttpGetIn" />
      <wsdl:output message="tns:CalculateMessagePrice_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="CalculatePatternMessagePrice_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CalculatePatternMessagePrice_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CalculatePatternMessagePrice_RESTHttpGetIn" />
      <wsdl:output message="tns:CalculatePatternMessagePrice_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="CalculatePatternMessagePrice">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CalculatePatternMessagePrice" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CalculatePatternMessagePriceHttpGetIn" />
      <wsdl:output message="tns:CalculatePatternMessagePriceHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="Statistics_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=Statistics_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:Statistics_RESTHttpGetIn" />
      <wsdl:output message="tns:Statistics_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="Statistics">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=Statistics" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:StatisticsHttpGetIn" />
      <wsdl:output message="tns:StatisticsHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliverySetActive_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayMessageDeliverySetActive_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayMessageDeliverySetActive_RESTHttpGetIn" />
      <wsdl:output message="tns:RelayMessageDeliverySetActive_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliverySetActive">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayMessageDeliverySetActive" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayMessageDeliverySetActiveHttpGetIn" />
      <wsdl:output message="tns:RelayMessageDeliverySetActiveHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryCreate_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayMessageDeliveryCreate_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayMessageDeliveryCreate_RESTHttpGetIn" />
      <wsdl:output message="tns:RelayMessageDeliveryCreate_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryCreate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayMessageDeliveryCreate" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayMessageDeliveryCreateHttpGetIn" />
      <wsdl:output message="tns:RelayMessageDeliveryCreateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryList_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayMessageDeliveryList_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayMessageDeliveryList_RESTHttpGetIn" />
      <wsdl:output message="tns:RelayMessageDeliveryList_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayMessageDeliveryList" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayMessageDeliveryListHttpGetIn" />
      <wsdl:output message="tns:RelayMessageDeliveryListHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageSetActive_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayRecieveMessageSetActive_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayRecieveMessageSetActive_RESTHttpGetIn" />
      <wsdl:output message="tns:RelayRecieveMessageSetActive_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageSetActive">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayRecieveMessageSetActive" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayRecieveMessageSetActiveHttpGetIn" />
      <wsdl:output message="tns:RelayRecieveMessageSetActiveHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageCreate_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayRecieveMessageCreate_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayRecieveMessageCreate_RESTHttpGetIn" />
      <wsdl:output message="tns:RelayRecieveMessageCreate_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageCreate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayRecieveMessageCreate" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayRecieveMessageCreateHttpGetIn" />
      <wsdl:output message="tns:RelayRecieveMessageCreateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageList_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayRecieveMessageList_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayRecieveMessageList_RESTHttpGetIn" />
      <wsdl:output message="tns:RelayRecieveMessageList_RESTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayRecieveMessageList" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayRecieveMessageListHttpGetIn" />
      <wsdl:output message="tns:RelayRecieveMessageListHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="AmootSMSWebService2HttpPost">
    <wsdl:operation name="GetServerDateTime_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetServerDateTime_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetServerDateTime_RESTHttpPostIn" />
      <wsdl:output message="tns:GetServerDateTime_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetServerDateTime">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetServerDateTime" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetServerDateTimeHttpPostIn" />
      <wsdl:output message="tns:GetServerDateTimeHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactGet_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactGet_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactGet_RESTHttpPostIn" />
      <wsdl:output message="tns:ContactGet_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactGet">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactGet" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactGetHttpPostIn" />
      <wsdl:output message="tns:ContactGetHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactListUpdates_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactListUpdates_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactListUpdates_RESTHttpPostIn" />
      <wsdl:output message="tns:ContactListUpdates_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactListUpdates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactListUpdates" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactListUpdatesHttpPostIn" />
      <wsdl:output message="tns:ContactListUpdatesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactGroupList_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactGroupList_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactGroupList_RESTHttpPostIn" />
      <wsdl:output message="tns:ContactGroupList_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactGroupList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactGroupList" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactGroupListHttpPostIn" />
      <wsdl:output message="tns:ContactGroupListHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactList_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactList_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactList_RESTHttpPostIn" />
      <wsdl:output message="tns:ContactList_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactList" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactListHttpPostIn" />
      <wsdl:output message="tns:ContactListHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactCreate_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactCreate_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactCreate_RESTHttpPostIn" />
      <wsdl:output message="tns:ContactCreate_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactEdit_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactEdit_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactEdit_RESTHttpPostIn" />
      <wsdl:output message="tns:ContactEdit_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactDelete_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactDelete_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactDelete_RESTHttpPostIn" />
      <wsdl:output message="tns:ContactDelete_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ContactDelete">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=ContactDelete" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:ContactDeleteHttpPostIn" />
      <wsdl:output message="tns:ContactDeleteHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseSetActive_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseSetActive_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseSetActive_RESTHttpPostIn" />
      <wsdl:output message="tns:CourseSetActive_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseSetActive">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseSetActive" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseSetActiveHttpPostIn" />
      <wsdl:output message="tns:CourseSetActiveHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateSimple_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseCreateSimple_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseCreateSimple_RESTHttpPostIn" />
      <wsdl:output message="tns:CourseCreateSimple_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateSimple">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseCreateSimple" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseCreateSimpleHttpPostIn" />
      <wsdl:output message="tns:CourseCreateSimpleHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithAvanak_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseCreateWithAvanak_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseCreateWithAvanak_RESTHttpPostIn" />
      <wsdl:output message="tns:CourseCreateWithAvanak_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithAvanak">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseCreateWithAvanak" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseCreateWithAvanakHttpPostIn" />
      <wsdl:output message="tns:CourseCreateWithAvanakHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithBackupLine_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseCreateWithBackupLine_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseCreateWithBackupLine_RESTHttpPostIn" />
      <wsdl:output message="tns:CourseCreateWithBackupLine_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithBackupLine">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseCreateWithBackupLine" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseCreateWithBackupLineHttpPostIn" />
      <wsdl:output message="tns:CourseCreateWithBackupLineHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseList_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseList_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseList_RESTHttpPostIn" />
      <wsdl:output message="tns:CourseList_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseList" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseListHttpPostIn" />
      <wsdl:output message="tns:CourseListHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseGroupCreate_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseGroupCreate_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseGroupCreate_RESTHttpPostIn" />
      <wsdl:output message="tns:CourseGroupCreate_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseGroupCreate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseGroupCreate" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseGroupCreateHttpPostIn" />
      <wsdl:output message="tns:CourseGroupCreateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseGroupList_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseGroupList_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseGroupList_RESTHttpPostIn" />
      <wsdl:output message="tns:CourseGroupList_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="CourseGroupList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CourseGroupList" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CourseGroupListHttpPostIn" />
      <wsdl:output message="tns:CourseGroupListHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SendSimple_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendSimple_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendSimple_RESTHttpPostIn" />
      <wsdl:output message="tns:SendSimple_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SendWithAvanak_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendWithAvanak_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendWithAvanak_RESTHttpPostIn" />
      <wsdl:output message="tns:SendWithAvanak_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SendWithBackupLine_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendWithBackupLine_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendWithBackupLine_RESTHttpPostIn" />
      <wsdl:output message="tns:SendWithBackupLine_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SendWithPattern_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendWithPattern_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendWithPattern_RESTHttpPostIn" />
      <wsdl:output message="tns:SendWithPattern_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SendWithPattern">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendWithPattern" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendWithPatternHttpPostIn" />
      <wsdl:output message="tns:SendWithPatternHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SendQuickOTP_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendQuickOTP_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendQuickOTP_RESTHttpPostIn" />
      <wsdl:output message="tns:SendQuickOTP_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SendQuickOTP">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendQuickOTP" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendQuickOTPHttpPostIn" />
      <wsdl:output message="tns:SendQuickOTPHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SendOTP_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendOTP_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendOTP_RESTHttpPostIn" />
      <wsdl:output message="tns:SendOTP_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SendOTP">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendOTP" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendOTPHttpPostIn" />
      <wsdl:output message="tns:SendOTPHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SendBank_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendBank_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendBank_RESTHttpPostIn" />
      <wsdl:output message="tns:SendBank_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SendBank">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendBank" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendBankHttpPostIn" />
      <wsdl:output message="tns:SendBankHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SendBankWithAvanak_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendBankWithAvanak_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendBankWithAvanak_RESTHttpPostIn" />
      <wsdl:output message="tns:SendBankWithAvanak_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SendBankWithAvanak">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendBankWithAvanak" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendBankWithAvanakHttpPostIn" />
      <wsdl:output message="tns:SendBankWithAvanakHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SendBankWithBackupLine_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendBankWithBackupLine_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendBankWithBackupLine_RESTHttpPostIn" />
      <wsdl:output message="tns:SendBankWithBackupLine_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SendBankWithBackupLine">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=SendBankWithBackupLine" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:SendBankWithBackupLineHttpPostIn" />
      <wsdl:output message="tns:SendBankWithBackupLineHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetBankTree_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetBankTree_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetBankTree_RESTHttpPostIn" />
      <wsdl:output message="tns:GetBankTree_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetBankTree">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetBankTree" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetBankTreeHttpPostIn" />
      <wsdl:output message="tns:GetBankTreeHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RecieveNewMessages_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RecieveNewMessages_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RecieveNewMessages_RESTHttpPostIn" />
      <wsdl:output message="tns:RecieveNewMessages_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RecieveNewMessages">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RecieveNewMessages" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RecieveNewMessagesHttpPostIn" />
      <wsdl:output message="tns:RecieveNewMessagesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RecieveMessages_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RecieveMessages_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RecieveMessages_RESTHttpPostIn" />
      <wsdl:output message="tns:RecieveMessages_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RecieveMessages">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RecieveMessages" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RecieveMessagesHttpPostIn" />
      <wsdl:output message="tns:RecieveMessagesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetMessage_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetMessage_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetMessage_RESTHttpPostIn" />
      <wsdl:output message="tns:GetMessage_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetMessage">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetMessage" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetMessageHttpPostIn" />
      <wsdl:output message="tns:GetMessageHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetMessages_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetMessage_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetMessages_RESTHttpPostIn" />
      <wsdl:output message="tns:GetMessages_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetMessages">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetMessage" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetMessagesHttpPostIn" />
      <wsdl:output message="tns:GetMessagesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetDelivery_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetDelivery_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetDelivery_RESTHttpPostIn" />
      <wsdl:output message="tns:GetDelivery_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetDelivery">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetDelivery" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetDeliveryHttpPostIn" />
      <wsdl:output message="tns:GetDeliveryHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetDeliveries_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=GetDeliveries_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:GetDeliveries_RESTHttpPostIn" />
      <wsdl:output message="tns:GetDeliveries_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="AccountStatus_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=AccountStatus_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:AccountStatus_RESTHttpPostIn" />
      <wsdl:output message="tns:AccountStatus_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="AccountStatus">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=AccountStatus" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:AccountStatusHttpPostIn" />
      <wsdl:output message="tns:AccountStatusHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="CalculateMessagePrice_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CalculateMessagePrice_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CalculateMessagePrice_RESTHttpPostIn" />
      <wsdl:output message="tns:CalculateMessagePrice_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="CalculatePatternMessagePrice_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CalculatePatternMessagePrice_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CalculatePatternMessagePrice_RESTHttpPostIn" />
      <wsdl:output message="tns:CalculatePatternMessagePrice_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="CalculatePatternMessagePrice">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=CalculatePatternMessagePrice" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:CalculatePatternMessagePriceHttpPostIn" />
      <wsdl:output message="tns:CalculatePatternMessagePriceHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="Statistics_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=Statistics_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:Statistics_RESTHttpPostIn" />
      <wsdl:output message="tns:Statistics_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="Statistics">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=Statistics" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:StatisticsHttpPostIn" />
      <wsdl:output message="tns:StatisticsHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliverySetActive_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayMessageDeliverySetActive_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayMessageDeliverySetActive_RESTHttpPostIn" />
      <wsdl:output message="tns:RelayMessageDeliverySetActive_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliverySetActive">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayMessageDeliverySetActive" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayMessageDeliverySetActiveHttpPostIn" />
      <wsdl:output message="tns:RelayMessageDeliverySetActiveHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryCreate_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayMessageDeliveryCreate_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayMessageDeliveryCreate_RESTHttpPostIn" />
      <wsdl:output message="tns:RelayMessageDeliveryCreate_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryCreate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayMessageDeliveryCreate" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayMessageDeliveryCreateHttpPostIn" />
      <wsdl:output message="tns:RelayMessageDeliveryCreateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryList_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayMessageDeliveryList_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayMessageDeliveryList_RESTHttpPostIn" />
      <wsdl:output message="tns:RelayMessageDeliveryList_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayMessageDeliveryList" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayMessageDeliveryListHttpPostIn" />
      <wsdl:output message="tns:RelayMessageDeliveryListHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageSetActive_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayRecieveMessageSetActive_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayRecieveMessageSetActive_RESTHttpPostIn" />
      <wsdl:output message="tns:RelayRecieveMessageSetActive_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageSetActive">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayRecieveMessageSetActive" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayRecieveMessageSetActiveHttpPostIn" />
      <wsdl:output message="tns:RelayRecieveMessageSetActiveHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageCreate_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayRecieveMessageCreate_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayRecieveMessageCreate_RESTHttpPostIn" />
      <wsdl:output message="tns:RelayRecieveMessageCreate_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageCreate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayRecieveMessageCreate" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayRecieveMessageCreateHttpPostIn" />
      <wsdl:output message="tns:RelayRecieveMessageCreateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageList_REST">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayRecieveMessageList_REST" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayRecieveMessageList_RESTHttpPostIn" />
      <wsdl:output message="tns:RelayRecieveMessageList_RESTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;iframe src="http://www.amootsms.com/webservice2.aspx?op=RelayRecieveMessageList" style="width: 100%;height: 400px;overflow-y: scroll;border: 0;"&gt;&lt;/iframe&gt;</wsdl:documentation>
      <wsdl:input message="tns:RelayRecieveMessageListHttpPostIn" />
      <wsdl:output message="tns:RelayRecieveMessageListHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="AmootSMSWebService2Soap" type="tns:AmootSMSWebService2Soap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="GetServerDateTime_REST">
      <soap:operation soapAction="http://tempuri.org/GetServerDateTime_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetServerDateTime">
      <soap:operation soapAction="http://tempuri.org/GetServerDateTime" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactGet_REST">
      <soap:operation soapAction="http://tempuri.org/ContactGet_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactGet">
      <soap:operation soapAction="http://tempuri.org/ContactGet" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactListUpdates_REST">
      <soap:operation soapAction="http://tempuri.org/ContactListUpdates_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactListUpdates">
      <soap:operation soapAction="http://tempuri.org/ContactListUpdates" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactGroupList_REST">
      <soap:operation soapAction="http://tempuri.org/ContactGroupList_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactGroupList">
      <soap:operation soapAction="http://tempuri.org/ContactGroupList" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactList_REST">
      <soap:operation soapAction="http://tempuri.org/ContactList_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactList">
      <soap:operation soapAction="http://tempuri.org/ContactList" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactCreate_REST">
      <soap:operation soapAction="http://tempuri.org/ContactCreate_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactCreate">
      <soap:operation soapAction="http://tempuri.org/ContactCreate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactEdit_REST">
      <soap:operation soapAction="http://tempuri.org/ContactEdit_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactEdit">
      <soap:operation soapAction="http://tempuri.org/ContactEdit" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactDelete_REST">
      <soap:operation soapAction="http://tempuri.org/ContactDelete_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactDelete">
      <soap:operation soapAction="http://tempuri.org/ContactDelete" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseSetActive_REST">
      <soap:operation soapAction="http://tempuri.org/CourseSetActive_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseSetActive">
      <soap:operation soapAction="http://tempuri.org/CourseSetActive" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseCreateSimple_REST">
      <soap:operation soapAction="http://tempuri.org/CourseCreateSimple_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseCreateSimple">
      <soap:operation soapAction="http://tempuri.org/CourseCreateSimple" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithAvanak_REST">
      <soap:operation soapAction="http://tempuri.org/CourseCreateWithAvanak_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithAvanak">
      <soap:operation soapAction="http://tempuri.org/CourseCreateWithAvanak" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithBackupLine_REST">
      <soap:operation soapAction="http://tempuri.org/CourseCreateWithBackupLine_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithBackupLine">
      <soap:operation soapAction="http://tempuri.org/CourseCreateWithBackupLine" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseList_REST">
      <soap:operation soapAction="http://tempuri.org/CourseList_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseList">
      <soap:operation soapAction="http://tempuri.org/CourseList" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseGroupCreate_REST">
      <soap:operation soapAction="http://tempuri.org/CourseGroupCreate_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseGroupCreate">
      <soap:operation soapAction="http://tempuri.org/CourseGroupCreate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseGroupList_REST">
      <soap:operation soapAction="http://tempuri.org/CourseGroupList_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseGroupList">
      <soap:operation soapAction="http://tempuri.org/CourseGroupList" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendSimple_REST">
      <soap:operation soapAction="http://tempuri.org/SendSimple_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendSimple">
      <soap:operation soapAction="http://tempuri.org/SendSimple" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendWithAvanak_REST">
      <soap:operation soapAction="http://tempuri.org/SendWithAvanak_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendWithAvanak">
      <soap:operation soapAction="http://tempuri.org/SendWithAvanak" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendWithBackupLine_REST">
      <soap:operation soapAction="http://tempuri.org/SendWithBackupLine_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendWithBackupLine">
      <soap:operation soapAction="http://tempuri.org/SendWithBackupLine" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendWithPattern_REST">
      <soap:operation soapAction="http://tempuri.org/SendWithPattern_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendWithPattern">
      <soap:operation soapAction="http://tempuri.org/SendWithPattern" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendQuickOTP_REST">
      <soap:operation soapAction="http://tempuri.org/SendQuickOTP_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendQuickOTP">
      <soap:operation soapAction="http://tempuri.org/SendQuickOTP" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendOTP_REST">
      <soap:operation soapAction="http://tempuri.org/SendOTP_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendOTP">
      <soap:operation soapAction="http://tempuri.org/SendOTP" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendBank_REST">
      <soap:operation soapAction="http://tempuri.org/SendBank_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendBank">
      <soap:operation soapAction="http://tempuri.org/SendBank" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendBankWithAvanak_REST">
      <soap:operation soapAction="http://tempuri.org/SendBankWithAvanak_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendBankWithAvanak">
      <soap:operation soapAction="http://tempuri.org/SendBankWithAvanak" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendBankWithBackupLine_REST">
      <soap:operation soapAction="http://tempuri.org/SendBankWithBackupLine_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendBankWithBackupLine">
      <soap:operation soapAction="http://tempuri.org/SendBankWithBackupLine" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetBankTree_REST">
      <soap:operation soapAction="http://tempuri.org/GetBankTree_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetBankTree">
      <soap:operation soapAction="http://tempuri.org/GetBankTree" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RecieveNewMessages_REST">
      <soap:operation soapAction="http://tempuri.org/RecieveNewMessages_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RecieveNewMessages">
      <soap:operation soapAction="http://tempuri.org/RecieveNewMessages" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RecieveMessages_REST">
      <soap:operation soapAction="http://tempuri.org/RecieveMessages_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RecieveMessages">
      <soap:operation soapAction="http://tempuri.org/RecieveMessages" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetMessage_REST">
      <soap:operation soapAction="http://tempuri.org/GetMessage_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetMessage">
      <soap:operation soapAction="http://tempuri.org/GetMessage" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetMessages_REST">
      <soap:operation soapAction="http://tempuri.org/GetMessages_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetMessages">
      <soap:operation soapAction="http://tempuri.org/GetMessages" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDelivery_REST">
      <soap:operation soapAction="http://tempuri.org/GetDelivery_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDelivery">
      <soap:operation soapAction="http://tempuri.org/GetDelivery" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDeliveries_REST">
      <soap:operation soapAction="http://tempuri.org/GetDeliveries_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDeliveries">
      <soap:operation soapAction="http://tempuri.org/GetDeliveries" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="AccountStatus_REST">
      <soap:operation soapAction="http://tempuri.org/AccountStatus_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="AccountStatus">
      <soap:operation soapAction="http://tempuri.org/AccountStatus" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CalculateMessagePrice_REST">
      <soap:operation soapAction="http://tempuri.org/CalculateMessagePrice_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CalculateMessagePrice">
      <soap:operation soapAction="http://tempuri.org/CalculateMessagePrice" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CalculatePatternMessagePrice_REST">
      <soap:operation soapAction="http://tempuri.org/CalculatePatternMessagePrice_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CalculatePatternMessagePrice">
      <soap:operation soapAction="http://tempuri.org/CalculatePatternMessagePrice" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Statistics_REST">
      <soap:operation soapAction="http://tempuri.org/Statistics_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Statistics">
      <soap:operation soapAction="http://tempuri.org/Statistics" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliverySetActive_REST">
      <soap:operation soapAction="http://tempuri.org/RelayMessageDeliverySetActive_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliverySetActive">
      <soap:operation soapAction="http://tempuri.org/RelayMessageDeliverySetActive" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryCreate_REST">
      <soap:operation soapAction="http://tempuri.org/RelayMessageDeliveryCreate_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryCreate">
      <soap:operation soapAction="http://tempuri.org/RelayMessageDeliveryCreate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryList_REST">
      <soap:operation soapAction="http://tempuri.org/RelayMessageDeliveryList_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryList">
      <soap:operation soapAction="http://tempuri.org/RelayMessageDeliveryList" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageSetActive_REST">
      <soap:operation soapAction="http://tempuri.org/RelayRecieveMessageSetActive_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageSetActive">
      <soap:operation soapAction="http://tempuri.org/RelayRecieveMessageSetActive" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageCreate_REST">
      <soap:operation soapAction="http://tempuri.org/RelayRecieveMessageCreate_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageCreate">
      <soap:operation soapAction="http://tempuri.org/RelayRecieveMessageCreate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageList_REST">
      <soap:operation soapAction="http://tempuri.org/RelayRecieveMessageList_REST" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageList">
      <soap:operation soapAction="http://tempuri.org/RelayRecieveMessageList" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="AmootSMSWebService2Soap12" type="tns:AmootSMSWebService2Soap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="GetServerDateTime_REST">
      <soap12:operation soapAction="http://tempuri.org/GetServerDateTime_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetServerDateTime">
      <soap12:operation soapAction="http://tempuri.org/GetServerDateTime" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactGet_REST">
      <soap12:operation soapAction="http://tempuri.org/ContactGet_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactGet">
      <soap12:operation soapAction="http://tempuri.org/ContactGet" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactListUpdates_REST">
      <soap12:operation soapAction="http://tempuri.org/ContactListUpdates_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactListUpdates">
      <soap12:operation soapAction="http://tempuri.org/ContactListUpdates" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactGroupList_REST">
      <soap12:operation soapAction="http://tempuri.org/ContactGroupList_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactGroupList">
      <soap12:operation soapAction="http://tempuri.org/ContactGroupList" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactList_REST">
      <soap12:operation soapAction="http://tempuri.org/ContactList_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactList">
      <soap12:operation soapAction="http://tempuri.org/ContactList" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactCreate_REST">
      <soap12:operation soapAction="http://tempuri.org/ContactCreate_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactCreate">
      <soap12:operation soapAction="http://tempuri.org/ContactCreate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactEdit_REST">
      <soap12:operation soapAction="http://tempuri.org/ContactEdit_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactEdit">
      <soap12:operation soapAction="http://tempuri.org/ContactEdit" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactDelete_REST">
      <soap12:operation soapAction="http://tempuri.org/ContactDelete_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactDelete">
      <soap12:operation soapAction="http://tempuri.org/ContactDelete" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseSetActive_REST">
      <soap12:operation soapAction="http://tempuri.org/CourseSetActive_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseSetActive">
      <soap12:operation soapAction="http://tempuri.org/CourseSetActive" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseCreateSimple_REST">
      <soap12:operation soapAction="http://tempuri.org/CourseCreateSimple_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseCreateSimple">
      <soap12:operation soapAction="http://tempuri.org/CourseCreateSimple" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithAvanak_REST">
      <soap12:operation soapAction="http://tempuri.org/CourseCreateWithAvanak_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithAvanak">
      <soap12:operation soapAction="http://tempuri.org/CourseCreateWithAvanak" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithBackupLine_REST">
      <soap12:operation soapAction="http://tempuri.org/CourseCreateWithBackupLine_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithBackupLine">
      <soap12:operation soapAction="http://tempuri.org/CourseCreateWithBackupLine" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseList_REST">
      <soap12:operation soapAction="http://tempuri.org/CourseList_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseList">
      <soap12:operation soapAction="http://tempuri.org/CourseList" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseGroupCreate_REST">
      <soap12:operation soapAction="http://tempuri.org/CourseGroupCreate_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseGroupCreate">
      <soap12:operation soapAction="http://tempuri.org/CourseGroupCreate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseGroupList_REST">
      <soap12:operation soapAction="http://tempuri.org/CourseGroupList_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseGroupList">
      <soap12:operation soapAction="http://tempuri.org/CourseGroupList" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendSimple_REST">
      <soap12:operation soapAction="http://tempuri.org/SendSimple_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendSimple">
      <soap12:operation soapAction="http://tempuri.org/SendSimple" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendWithAvanak_REST">
      <soap12:operation soapAction="http://tempuri.org/SendWithAvanak_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendWithAvanak">
      <soap12:operation soapAction="http://tempuri.org/SendWithAvanak" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendWithBackupLine_REST">
      <soap12:operation soapAction="http://tempuri.org/SendWithBackupLine_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendWithBackupLine">
      <soap12:operation soapAction="http://tempuri.org/SendWithBackupLine" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendWithPattern_REST">
      <soap12:operation soapAction="http://tempuri.org/SendWithPattern_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendWithPattern">
      <soap12:operation soapAction="http://tempuri.org/SendWithPattern" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendQuickOTP_REST">
      <soap12:operation soapAction="http://tempuri.org/SendQuickOTP_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendQuickOTP">
      <soap12:operation soapAction="http://tempuri.org/SendQuickOTP" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendOTP_REST">
      <soap12:operation soapAction="http://tempuri.org/SendOTP_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendOTP">
      <soap12:operation soapAction="http://tempuri.org/SendOTP" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendBank_REST">
      <soap12:operation soapAction="http://tempuri.org/SendBank_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendBank">
      <soap12:operation soapAction="http://tempuri.org/SendBank" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendBankWithAvanak_REST">
      <soap12:operation soapAction="http://tempuri.org/SendBankWithAvanak_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendBankWithAvanak">
      <soap12:operation soapAction="http://tempuri.org/SendBankWithAvanak" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendBankWithBackupLine_REST">
      <soap12:operation soapAction="http://tempuri.org/SendBankWithBackupLine_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendBankWithBackupLine">
      <soap12:operation soapAction="http://tempuri.org/SendBankWithBackupLine" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetBankTree_REST">
      <soap12:operation soapAction="http://tempuri.org/GetBankTree_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetBankTree">
      <soap12:operation soapAction="http://tempuri.org/GetBankTree" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RecieveNewMessages_REST">
      <soap12:operation soapAction="http://tempuri.org/RecieveNewMessages_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RecieveNewMessages">
      <soap12:operation soapAction="http://tempuri.org/RecieveNewMessages" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RecieveMessages_REST">
      <soap12:operation soapAction="http://tempuri.org/RecieveMessages_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RecieveMessages">
      <soap12:operation soapAction="http://tempuri.org/RecieveMessages" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetMessage_REST">
      <soap12:operation soapAction="http://tempuri.org/GetMessage_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetMessage">
      <soap12:operation soapAction="http://tempuri.org/GetMessage" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetMessages_REST">
      <soap12:operation soapAction="http://tempuri.org/GetMessages_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetMessages">
      <soap12:operation soapAction="http://tempuri.org/GetMessages" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDelivery_REST">
      <soap12:operation soapAction="http://tempuri.org/GetDelivery_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDelivery">
      <soap12:operation soapAction="http://tempuri.org/GetDelivery" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDeliveries_REST">
      <soap12:operation soapAction="http://tempuri.org/GetDeliveries_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDeliveries">
      <soap12:operation soapAction="http://tempuri.org/GetDeliveries" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="AccountStatus_REST">
      <soap12:operation soapAction="http://tempuri.org/AccountStatus_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="AccountStatus">
      <soap12:operation soapAction="http://tempuri.org/AccountStatus" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CalculateMessagePrice_REST">
      <soap12:operation soapAction="http://tempuri.org/CalculateMessagePrice_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CalculateMessagePrice">
      <soap12:operation soapAction="http://tempuri.org/CalculateMessagePrice" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CalculatePatternMessagePrice_REST">
      <soap12:operation soapAction="http://tempuri.org/CalculatePatternMessagePrice_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CalculatePatternMessagePrice">
      <soap12:operation soapAction="http://tempuri.org/CalculatePatternMessagePrice" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Statistics_REST">
      <soap12:operation soapAction="http://tempuri.org/Statistics_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Statistics">
      <soap12:operation soapAction="http://tempuri.org/Statistics" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliverySetActive_REST">
      <soap12:operation soapAction="http://tempuri.org/RelayMessageDeliverySetActive_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliverySetActive">
      <soap12:operation soapAction="http://tempuri.org/RelayMessageDeliverySetActive" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryCreate_REST">
      <soap12:operation soapAction="http://tempuri.org/RelayMessageDeliveryCreate_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryCreate">
      <soap12:operation soapAction="http://tempuri.org/RelayMessageDeliveryCreate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryList_REST">
      <soap12:operation soapAction="http://tempuri.org/RelayMessageDeliveryList_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryList">
      <soap12:operation soapAction="http://tempuri.org/RelayMessageDeliveryList" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageSetActive_REST">
      <soap12:operation soapAction="http://tempuri.org/RelayRecieveMessageSetActive_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageSetActive">
      <soap12:operation soapAction="http://tempuri.org/RelayRecieveMessageSetActive" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageCreate_REST">
      <soap12:operation soapAction="http://tempuri.org/RelayRecieveMessageCreate_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageCreate">
      <soap12:operation soapAction="http://tempuri.org/RelayRecieveMessageCreate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageList_REST">
      <soap12:operation soapAction="http://tempuri.org/RelayRecieveMessageList_REST" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageList">
      <soap12:operation soapAction="http://tempuri.org/RelayRecieveMessageList" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="AmootSMSWebService2HttpGet" type="tns:AmootSMSWebService2HttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="GetServerDateTime_REST">
      <http:operation location="/GetServerDateTime_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="GetServerDateTime">
      <http:operation location="/GetServerDateTime" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactGet_REST">
      <http:operation location="/ContactGet_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="ContactGet">
      <http:operation location="/ContactGet" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactListUpdates_REST">
      <http:operation location="/ContactListUpdates_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="ContactListUpdates">
      <http:operation location="/ContactListUpdates" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactGroupList_REST">
      <http:operation location="/ContactGroupList_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="ContactGroupList">
      <http:operation location="/ContactGroupList" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactList_REST">
      <http:operation location="/ContactList_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="ContactList">
      <http:operation location="/ContactList" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactCreate_REST">
      <http:operation location="/ContactCreate_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="ContactEdit_REST">
      <http:operation location="/ContactEdit_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="ContactDelete_REST">
      <http:operation location="/ContactDelete_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="ContactDelete">
      <http:operation location="/ContactDelete" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseSetActive_REST">
      <http:operation location="/CourseSetActive_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="CourseSetActive">
      <http:operation location="/CourseSetActive" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseCreateSimple_REST">
      <http:operation location="/CourseCreateSimple_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateSimple">
      <http:operation location="/CourseCreateSimple" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithAvanak_REST">
      <http:operation location="/CourseCreateWithAvanak_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithAvanak">
      <http:operation location="/CourseCreateWithAvanak" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithBackupLine_REST">
      <http:operation location="/CourseCreateWithBackupLine_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithBackupLine">
      <http:operation location="/CourseCreateWithBackupLine" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseList_REST">
      <http:operation location="/CourseList_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="CourseList">
      <http:operation location="/CourseList" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseGroupCreate_REST">
      <http:operation location="/CourseGroupCreate_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="CourseGroupCreate">
      <http:operation location="/CourseGroupCreate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseGroupList_REST">
      <http:operation location="/CourseGroupList_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="CourseGroupList">
      <http:operation location="/CourseGroupList" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendSimple_REST">
      <http:operation location="/SendSimple_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="SendWithAvanak_REST">
      <http:operation location="/SendWithAvanak_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="SendWithBackupLine_REST">
      <http:operation location="/SendWithBackupLine_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="SendWithPattern_REST">
      <http:operation location="/SendWithPattern_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="SendWithPattern">
      <http:operation location="/SendWithPattern" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendQuickOTP_REST">
      <http:operation location="/SendQuickOTP_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="SendQuickOTP">
      <http:operation location="/SendQuickOTP" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendOTP_REST">
      <http:operation location="/SendOTP_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="SendOTP">
      <http:operation location="/SendOTP" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendBank_REST">
      <http:operation location="/SendBank_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="SendBank">
      <http:operation location="/SendBank" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendBankWithAvanak_REST">
      <http:operation location="/SendBankWithAvanak_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="SendBankWithAvanak">
      <http:operation location="/SendBankWithAvanak" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendBankWithBackupLine_REST">
      <http:operation location="/SendBankWithBackupLine_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="SendBankWithBackupLine">
      <http:operation location="/SendBankWithBackupLine" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetBankTree_REST">
      <http:operation location="/GetBankTree_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="GetBankTree">
      <http:operation location="/GetBankTree" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RecieveNewMessages_REST">
      <http:operation location="/RecieveNewMessages_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RecieveNewMessages">
      <http:operation location="/RecieveNewMessages" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RecieveMessages_REST">
      <http:operation location="/RecieveMessages_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RecieveMessages">
      <http:operation location="/RecieveMessages" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetMessage_REST">
      <http:operation location="/GetMessage_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="GetMessage">
      <http:operation location="/GetMessage" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetMessages_REST">
      <http:operation location="/GetMessages_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="GetMessages">
      <http:operation location="/GetMessages" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDelivery_REST">
      <http:operation location="/GetDelivery_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="GetDelivery">
      <http:operation location="/GetDelivery" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDeliveries_REST">
      <http:operation location="/GetDeliveries_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="AccountStatus_REST">
      <http:operation location="/AccountStatus_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="AccountStatus">
      <http:operation location="/AccountStatus" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CalculateMessagePrice_REST">
      <http:operation location="/CalculateMessagePrice_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="CalculatePatternMessagePrice_REST">
      <http:operation location="/CalculatePatternMessagePrice_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="CalculatePatternMessagePrice">
      <http:operation location="/CalculatePatternMessagePrice" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Statistics_REST">
      <http:operation location="/Statistics_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="Statistics">
      <http:operation location="/Statistics" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliverySetActive_REST">
      <http:operation location="/RelayMessageDeliverySetActive_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliverySetActive">
      <http:operation location="/RelayMessageDeliverySetActive" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryCreate_REST">
      <http:operation location="/RelayMessageDeliveryCreate_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryCreate">
      <http:operation location="/RelayMessageDeliveryCreate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryList_REST">
      <http:operation location="/RelayMessageDeliveryList_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryList">
      <http:operation location="/RelayMessageDeliveryList" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageSetActive_REST">
      <http:operation location="/RelayRecieveMessageSetActive_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageSetActive">
      <http:operation location="/RelayRecieveMessageSetActive" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageCreate_REST">
      <http:operation location="/RelayRecieveMessageCreate_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageCreate">
      <http:operation location="/RelayRecieveMessageCreate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageList_REST">
      <http:operation location="/RelayRecieveMessageList_REST" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageList">
      <http:operation location="/RelayRecieveMessageList" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="AmootSMSWebService2HttpPost" type="tns:AmootSMSWebService2HttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="GetServerDateTime_REST">
      <http:operation location="/GetServerDateTime_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="GetServerDateTime">
      <http:operation location="/GetServerDateTime" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactGet_REST">
      <http:operation location="/ContactGet_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="ContactGet">
      <http:operation location="/ContactGet" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactListUpdates_REST">
      <http:operation location="/ContactListUpdates_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="ContactListUpdates">
      <http:operation location="/ContactListUpdates" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactGroupList_REST">
      <http:operation location="/ContactGroupList_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="ContactGroupList">
      <http:operation location="/ContactGroupList" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactList_REST">
      <http:operation location="/ContactList_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="ContactList">
      <http:operation location="/ContactList" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ContactCreate_REST">
      <http:operation location="/ContactCreate_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="ContactEdit_REST">
      <http:operation location="/ContactEdit_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="ContactDelete_REST">
      <http:operation location="/ContactDelete_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="ContactDelete">
      <http:operation location="/ContactDelete" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseSetActive_REST">
      <http:operation location="/CourseSetActive_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="CourseSetActive">
      <http:operation location="/CourseSetActive" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseCreateSimple_REST">
      <http:operation location="/CourseCreateSimple_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateSimple">
      <http:operation location="/CourseCreateSimple" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithAvanak_REST">
      <http:operation location="/CourseCreateWithAvanak_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithAvanak">
      <http:operation location="/CourseCreateWithAvanak" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithBackupLine_REST">
      <http:operation location="/CourseCreateWithBackupLine_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="CourseCreateWithBackupLine">
      <http:operation location="/CourseCreateWithBackupLine" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseList_REST">
      <http:operation location="/CourseList_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="CourseList">
      <http:operation location="/CourseList" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseGroupCreate_REST">
      <http:operation location="/CourseGroupCreate_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="CourseGroupCreate">
      <http:operation location="/CourseGroupCreate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CourseGroupList_REST">
      <http:operation location="/CourseGroupList_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="CourseGroupList">
      <http:operation location="/CourseGroupList" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendSimple_REST">
      <http:operation location="/SendSimple_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="SendWithAvanak_REST">
      <http:operation location="/SendWithAvanak_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="SendWithBackupLine_REST">
      <http:operation location="/SendWithBackupLine_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="SendWithPattern_REST">
      <http:operation location="/SendWithPattern_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="SendWithPattern">
      <http:operation location="/SendWithPattern" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendQuickOTP_REST">
      <http:operation location="/SendQuickOTP_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="SendQuickOTP">
      <http:operation location="/SendQuickOTP" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendOTP_REST">
      <http:operation location="/SendOTP_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="SendOTP">
      <http:operation location="/SendOTP" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendBank_REST">
      <http:operation location="/SendBank_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="SendBank">
      <http:operation location="/SendBank" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendBankWithAvanak_REST">
      <http:operation location="/SendBankWithAvanak_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="SendBankWithAvanak">
      <http:operation location="/SendBankWithAvanak" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SendBankWithBackupLine_REST">
      <http:operation location="/SendBankWithBackupLine_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="SendBankWithBackupLine">
      <http:operation location="/SendBankWithBackupLine" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetBankTree_REST">
      <http:operation location="/GetBankTree_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="GetBankTree">
      <http:operation location="/GetBankTree" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RecieveNewMessages_REST">
      <http:operation location="/RecieveNewMessages_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RecieveNewMessages">
      <http:operation location="/RecieveNewMessages" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RecieveMessages_REST">
      <http:operation location="/RecieveMessages_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RecieveMessages">
      <http:operation location="/RecieveMessages" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetMessage_REST">
      <http:operation location="/GetMessage_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="GetMessage">
      <http:operation location="/GetMessage" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetMessages_REST">
      <http:operation location="/GetMessages_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="GetMessages">
      <http:operation location="/GetMessages" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDelivery_REST">
      <http:operation location="/GetDelivery_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="GetDelivery">
      <http:operation location="/GetDelivery" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetDeliveries_REST">
      <http:operation location="/GetDeliveries_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="AccountStatus_REST">
      <http:operation location="/AccountStatus_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="AccountStatus">
      <http:operation location="/AccountStatus" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CalculateMessagePrice_REST">
      <http:operation location="/CalculateMessagePrice_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="CalculatePatternMessagePrice_REST">
      <http:operation location="/CalculatePatternMessagePrice_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="CalculatePatternMessagePrice">
      <http:operation location="/CalculatePatternMessagePrice" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Statistics_REST">
      <http:operation location="/Statistics_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="Statistics">
      <http:operation location="/Statistics" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliverySetActive_REST">
      <http:operation location="/RelayMessageDeliverySetActive_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliverySetActive">
      <http:operation location="/RelayMessageDeliverySetActive" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryCreate_REST">
      <http:operation location="/RelayMessageDeliveryCreate_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryCreate">
      <http:operation location="/RelayMessageDeliveryCreate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryList_REST">
      <http:operation location="/RelayMessageDeliveryList_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RelayMessageDeliveryList">
      <http:operation location="/RelayMessageDeliveryList" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageSetActive_REST">
      <http:operation location="/RelayRecieveMessageSetActive_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageSetActive">
      <http:operation location="/RelayRecieveMessageSetActive" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageCreate_REST">
      <http:operation location="/RelayRecieveMessageCreate_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageCreate">
      <http:operation location="/RelayRecieveMessageCreate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageList_REST">
      <http:operation location="/RelayRecieveMessageList_REST" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RelayRecieveMessageList">
      <http:operation location="/RelayRecieveMessageList" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="AmootSMSWebService2">
    <wsdl:port name="AmootSMSWebService2Soap" binding="tns:AmootSMSWebService2Soap">
      <soap:address location="https://portal.amootsms.com/webservice2.asmx" />
    </wsdl:port>
    <wsdl:port name="AmootSMSWebService2Soap12" binding="tns:AmootSMSWebService2Soap12">
      <soap12:address location="https://portal.amootsms.com/webservice2.asmx" />
    </wsdl:port>
    <wsdl:port name="AmootSMSWebService2HttpGet" binding="tns:AmootSMSWebService2HttpGet">
      <http:address location="https://portal.amootsms.com/webservice2.asmx" />
    </wsdl:port>
    <wsdl:port name="AmootSMSWebService2HttpPost" binding="tns:AmootSMSWebService2HttpPost">
      <http:address location="https://portal.amootsms.com/webservice2.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>