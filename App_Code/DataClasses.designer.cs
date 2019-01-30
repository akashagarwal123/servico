﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="servico")]
public partial class DataClassesDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void Insertregister(register instance);
  partial void Updateregister(register instance);
  partial void Deleteregister(register instance);
  #endregion
	
	public DataClassesDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["servicoConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<register> registers
	{
		get
		{
			return this.GetTable<register>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.register")]
public partial class register : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _id;
	
	private string _name;
	
	private string _fname;
	
	private string _email;
	
	private System.Nullable<int> _password;
	
	private string _designation;
	
	private string _address;
	
	private string _city;
	
	private string _states;
	
	private string _country;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OnnameChanging(string value);
    partial void OnnameChanged();
    partial void OnfnameChanging(string value);
    partial void OnfnameChanged();
    partial void OnemailChanging(string value);
    partial void OnemailChanged();
    partial void OnpasswordChanging(System.Nullable<int> value);
    partial void OnpasswordChanged();
    partial void OndesignationChanging(string value);
    partial void OndesignationChanged();
    partial void OnaddressChanging(string value);
    partial void OnaddressChanged();
    partial void OncityChanging(string value);
    partial void OncityChanged();
    partial void OnstatesChanging(string value);
    partial void OnstatesChanged();
    partial void OncountryChanging(string value);
    partial void OncountryChanged();
    #endregion
	
	public register()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int id
	{
		get
		{
			return this._id;
		}
		set
		{
			if ((this._id != value))
			{
				this.OnidChanging(value);
				this.SendPropertyChanging();
				this._id = value;
				this.SendPropertyChanged("id");
				this.OnidChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_name", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string name
	{
		get
		{
			return this._name;
		}
		set
		{
			if ((this._name != value))
			{
				this.OnnameChanging(value);
				this.SendPropertyChanging();
				this._name = value;
				this.SendPropertyChanged("name");
				this.OnnameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_fname", DbType="VarChar(50)")]
	public string fname
	{
		get
		{
			return this._fname;
		}
		set
		{
			if ((this._fname != value))
			{
				this.OnfnameChanging(value);
				this.SendPropertyChanging();
				this._fname = value;
				this.SendPropertyChanged("fname");
				this.OnfnameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_email", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string email
	{
		get
		{
			return this._email;
		}
		set
		{
			if ((this._email != value))
			{
				this.OnemailChanging(value);
				this.SendPropertyChanging();
				this._email = value;
				this.SendPropertyChanged("email");
				this.OnemailChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_password", DbType="Int")]
	public System.Nullable<int> password
	{
		get
		{
			return this._password;
		}
		set
		{
			if ((this._password != value))
			{
				this.OnpasswordChanging(value);
				this.SendPropertyChanging();
				this._password = value;
				this.SendPropertyChanged("password");
				this.OnpasswordChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_designation", DbType="VarChar(20) NOT NULL", CanBeNull=false)]
	public string designation
	{
		get
		{
			return this._designation;
		}
		set
		{
			if ((this._designation != value))
			{
				this.OndesignationChanging(value);
				this.SendPropertyChanging();
				this._designation = value;
				this.SendPropertyChanged("designation");
				this.OndesignationChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_address", DbType="VarChar(100)")]
	public string address
	{
		get
		{
			return this._address;
		}
		set
		{
			if ((this._address != value))
			{
				this.OnaddressChanging(value);
				this.SendPropertyChanging();
				this._address = value;
				this.SendPropertyChanged("address");
				this.OnaddressChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_city", DbType="VarChar(20)")]
	public string city
	{
		get
		{
			return this._city;
		}
		set
		{
			if ((this._city != value))
			{
				this.OncityChanging(value);
				this.SendPropertyChanging();
				this._city = value;
				this.SendPropertyChanged("city");
				this.OncityChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_states", DbType="VarChar(20)")]
	public string states
	{
		get
		{
			return this._states;
		}
		set
		{
			if ((this._states != value))
			{
				this.OnstatesChanging(value);
				this.SendPropertyChanging();
				this._states = value;
				this.SendPropertyChanged("states");
				this.OnstatesChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_country", DbType="VarChar(20) NOT NULL", CanBeNull=false)]
	public string country
	{
		get
		{
			return this._country;
		}
		set
		{
			if ((this._country != value))
			{
				this.OncountryChanging(value);
				this.SendPropertyChanging();
				this._country = value;
				this.SendPropertyChanged("country");
				this.OncountryChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
#pragma warning restore 1591
