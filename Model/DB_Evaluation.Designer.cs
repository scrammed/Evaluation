﻿//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:2.0.50727.3643
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

[assembly: global::System.Data.Objects.DataClasses.EdmSchemaAttribute()]

// 原始文件名:
// 生成日期: 2013-3-21 15:24:00
namespace Model
{
    
    /// <summary>
    /// 架构中不存在 DB_EvaluationEntities 的注释。
    /// </summary>
    public partial class DB_EvaluationEntities : global::System.Data.Objects.ObjectContext
    {
        /// <summary>
        /// 请使用应用程序配置文件的“DB_EvaluationEntities”部分中的连接字符串初始化新 DB_EvaluationEntities 对象。
        /// </summary>
        public DB_EvaluationEntities() : 
                base("name=DB_EvaluationEntities", "DB_EvaluationEntities")
        {
            this.OnContextCreated();
        }
        /// <summary>
        /// 初始化新的 DB_EvaluationEntities 对象。
        /// </summary>
        public DB_EvaluationEntities(string connectionString) : 
                base(connectionString, "DB_EvaluationEntities")
        {
            this.OnContextCreated();
        }
        /// <summary>
        /// 初始化新的 DB_EvaluationEntities 对象。
        /// </summary>
        public DB_EvaluationEntities(global::System.Data.EntityClient.EntityConnection connection) : 
                base(connection, "DB_EvaluationEntities")
        {
            this.OnContextCreated();
        }
        partial void OnContextCreated();
        /// <summary>
        /// 架构中不存在 T_Behalf 的注释。
        /// </summary>
        public global::System.Data.Objects.ObjectQuery<T_Behalf> T_Behalf
        {
            get
            {
                if ((this._T_Behalf == null))
                {
                    this._T_Behalf = base.CreateQuery<T_Behalf>("[T_Behalf]");
                }
                return this._T_Behalf;
            }
        }
        private global::System.Data.Objects.ObjectQuery<T_Behalf> _T_Behalf;
        /// <summary>
        /// 架构中不存在 T_Department 的注释。
        /// </summary>
        public global::System.Data.Objects.ObjectQuery<T_Department> T_Department
        {
            get
            {
                if ((this._T_Department == null))
                {
                    this._T_Department = base.CreateQuery<T_Department>("[T_Department]");
                }
                return this._T_Department;
            }
        }
        private global::System.Data.Objects.ObjectQuery<T_Department> _T_Department;
        /// <summary>
        /// 架构中不存在 T_Dictionary 的注释。
        /// </summary>
        public global::System.Data.Objects.ObjectQuery<T_Dictionary> T_Dictionary
        {
            get
            {
                if ((this._T_Dictionary == null))
                {
                    this._T_Dictionary = base.CreateQuery<T_Dictionary>("[T_Dictionary]");
                }
                return this._T_Dictionary;
            }
        }
        private global::System.Data.Objects.ObjectQuery<T_Dictionary> _T_Dictionary;
        /// <summary>
        /// 架构中不存在 T_Sorce 的注释。
        /// </summary>
        public global::System.Data.Objects.ObjectQuery<T_Sorce> T_Sorce
        {
            get
            {
                if ((this._T_Sorce == null))
                {
                    this._T_Sorce = base.CreateQuery<T_Sorce>("[T_Sorce]");
                }
                return this._T_Sorce;
            }
        }
        private global::System.Data.Objects.ObjectQuery<T_Sorce> _T_Sorce;
        /// <summary>
        /// 架构中不存在 T_SysUser 的注释。
        /// </summary>
        public global::System.Data.Objects.ObjectQuery<T_SysUser> T_SysUser
        {
            get
            {
                if ((this._T_SysUser == null))
                {
                    this._T_SysUser = base.CreateQuery<T_SysUser>("[T_SysUser]");
                }
                return this._T_SysUser;
            }
        }
        private global::System.Data.Objects.ObjectQuery<T_SysUser> _T_SysUser;
        /// <summary>
        /// 架构中不存在 T_Behalf 的注释。
        /// </summary>
        public void AddToT_Behalf(T_Behalf t_Behalf)
        {
            base.AddObject("T_Behalf", t_Behalf);
        }
        /// <summary>
        /// 架构中不存在 T_Department 的注释。
        /// </summary>
        public void AddToT_Department(T_Department t_Department)
        {
            base.AddObject("T_Department", t_Department);
        }
        /// <summary>
        /// 架构中不存在 T_Dictionary 的注释。
        /// </summary>
        public void AddToT_Dictionary(T_Dictionary t_Dictionary)
        {
            base.AddObject("T_Dictionary", t_Dictionary);
        }
        /// <summary>
        /// 架构中不存在 T_Sorce 的注释。
        /// </summary>
        public void AddToT_Sorce(T_Sorce t_Sorce)
        {
            base.AddObject("T_Sorce", t_Sorce);
        }
        /// <summary>
        /// 架构中不存在 T_SysUser 的注释。
        /// </summary>
        public void AddToT_SysUser(T_SysUser t_SysUser)
        {
            base.AddObject("T_SysUser", t_SysUser);
        }
    }
    /// <summary>
    /// 架构中不存在 DB_EvaluationModel.T_Behalf 的注释。
    /// </summary>
    /// <KeyProperties>
    /// Id
    /// </KeyProperties>
    [global::System.Data.Objects.DataClasses.EdmEntityTypeAttribute(NamespaceName="DB_EvaluationModel", Name="T_Behalf")]
    [global::System.Runtime.Serialization.DataContractAttribute(IsReference=true)]
    [global::System.Serializable()]
    public partial class T_Behalf : global::System.Data.Objects.DataClasses.EntityObject
    {
        /// <summary>
        /// 创建新的 T_Behalf 对象。
        /// </summary>
        /// <param name="id">Id 的初始值。</param>
        public static T_Behalf CreateT_Behalf(int id)
        {
            T_Behalf t_Behalf = new T_Behalf();
            t_Behalf.Id = id;
            return t_Behalf;
        }
        /// <summary>
        /// 架构中不存在属性 Id 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public int Id
        {
            get
            {
                return this._Id;
            }
            set
            {
                this.OnIdChanging(value);
                this.ReportPropertyChanging("Id");
                this._Id = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value);
                this.ReportPropertyChanged("Id");
                this.OnIdChanged();
            }
        }
        private int _Id;
        partial void OnIdChanging(int value);
        partial void OnIdChanged();
        /// <summary>
        /// 架构中不存在属性 UserName 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public string UserName
        {
            get
            {
                return this._UserName;
            }
            set
            {
                this.OnUserNameChanging(value);
                this.ReportPropertyChanging("UserName");
                this._UserName = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value, true);
                this.ReportPropertyChanged("UserName");
                this.OnUserNameChanged();
            }
        }
        private string _UserName;
        partial void OnUserNameChanging(string value);
        partial void OnUserNameChanged();
        /// <summary>
        /// 架构中不存在属性 BehalfLevel 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public global::System.Nullable<int> BehalfLevel
        {
            get
            {
                return this._BehalfLevel;
            }
            set
            {
                this.OnBehalfLevelChanging(value);
                this.ReportPropertyChanging("BehalfLevel");
                this._BehalfLevel = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value);
                this.ReportPropertyChanged("BehalfLevel");
                this.OnBehalfLevelChanged();
            }
        }
        private global::System.Nullable<int> _BehalfLevel;
        partial void OnBehalfLevelChanging(global::System.Nullable<int> value);
        partial void OnBehalfLevelChanged();
        /// <summary>
        /// 架构中不存在属性 Telephone 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public string Telephone
        {
            get
            {
                return this._Telephone;
            }
            set
            {
                this.OnTelephoneChanging(value);
                this.ReportPropertyChanging("Telephone");
                this._Telephone = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value, true);
                this.ReportPropertyChanged("Telephone");
                this.OnTelephoneChanged();
            }
        }
        private string _Telephone;
        partial void OnTelephoneChanging(string value);
        partial void OnTelephoneChanged();
        /// <summary>
        /// 架构中不存在属性 Phone 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public string Phone
        {
            get
            {
                return this._Phone;
            }
            set
            {
                this.OnPhoneChanging(value);
                this.ReportPropertyChanging("Phone");
                this._Phone = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value, true);
                this.ReportPropertyChanged("Phone");
                this.OnPhoneChanged();
            }
        }
        private string _Phone;
        partial void OnPhoneChanging(string value);
        partial void OnPhoneChanged();
        /// <summary>
        /// 架构中不存在属性 Email 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public string Email
        {
            get
            {
                return this._Email;
            }
            set
            {
                this.OnEmailChanging(value);
                this.ReportPropertyChanging("Email");
                this._Email = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value, true);
                this.ReportPropertyChanged("Email");
                this.OnEmailChanged();
            }
        }
        private string _Email;
        partial void OnEmailChanging(string value);
        partial void OnEmailChanged();
        /// <summary>
        /// 架构中不存在属性 Position 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public string Position
        {
            get
            {
                return this._Position;
            }
            set
            {
                this.OnPositionChanging(value);
                this.ReportPropertyChanging("Position");
                this._Position = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value, true);
                this.ReportPropertyChanged("Position");
                this.OnPositionChanged();
            }
        }
        private string _Position;
        partial void OnPositionChanging(string value);
        partial void OnPositionChanged();
        /// <summary>
        /// 架构中不存在属性 Isthisdept 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public global::System.Nullable<bool> Isthisdept
        {
            get
            {
                return this._Isthisdept;
            }
            set
            {
                this.OnIsthisdeptChanging(value);
                this.ReportPropertyChanging("Isthisdept");
                this._Isthisdept = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value);
                this.ReportPropertyChanged("Isthisdept");
                this.OnIsthisdeptChanged();
            }
        }
        private global::System.Nullable<bool> _Isthisdept;
        partial void OnIsthisdeptChanging(global::System.Nullable<bool> value);
        partial void OnIsthisdeptChanged();
        /// <summary>
        /// 架构中不存在属性 Department 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public string Department
        {
            get
            {
                return this._Department;
            }
            set
            {
                this.OnDepartmentChanging(value);
                this.ReportPropertyChanging("Department");
                this._Department = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value, true);
                this.ReportPropertyChanged("Department");
                this.OnDepartmentChanged();
            }
        }
        private string _Department;
        partial void OnDepartmentChanging(string value);
        partial void OnDepartmentChanged();
        /// <summary>
        /// 架构中不存在属性 IsVoted 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public global::System.Nullable<int> IsVoted
        {
            get
            {
                return this._IsVoted;
            }
            set
            {
                this.OnIsVotedChanging(value);
                this.ReportPropertyChanging("IsVoted");
                this._IsVoted = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value);
                this.ReportPropertyChanged("IsVoted");
                this.OnIsVotedChanged();
            }
        }
        private global::System.Nullable<int> _IsVoted;
        partial void OnIsVotedChanging(global::System.Nullable<int> value);
        partial void OnIsVotedChanged();
        /// <summary>
        /// 架构中不存在属性 IsDel 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public global::System.Nullable<bool> IsDel
        {
            get
            {
                return this._IsDel;
            }
            set
            {
                this.OnIsDelChanging(value);
                this.ReportPropertyChanging("IsDel");
                this._IsDel = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value);
                this.ReportPropertyChanged("IsDel");
                this.OnIsDelChanged();
            }
        }
        private global::System.Nullable<bool> _IsDel;
        partial void OnIsDelChanging(global::System.Nullable<bool> value);
        partial void OnIsDelChanged();
    }
    /// <summary>
    /// 架构中不存在 DB_EvaluationModel.T_Department 的注释。
    /// </summary>
    /// <KeyProperties>
    /// Id
    /// </KeyProperties>
    [global::System.Data.Objects.DataClasses.EdmEntityTypeAttribute(NamespaceName="DB_EvaluationModel", Name="T_Department")]
    [global::System.Runtime.Serialization.DataContractAttribute(IsReference=true)]
    [global::System.Serializable()]
    public partial class T_Department : global::System.Data.Objects.DataClasses.EntityObject
    {
        /// <summary>
        /// 创建新的 T_Department 对象。
        /// </summary>
        /// <param name="id">Id 的初始值。</param>
        public static T_Department CreateT_Department(int id)
        {
            T_Department t_Department = new T_Department();
            t_Department.Id = id;
            return t_Department;
        }
        /// <summary>
        /// 架构中不存在属性 Id 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public int Id
        {
            get
            {
                return this._Id;
            }
            set
            {
                this.OnIdChanging(value);
                this.ReportPropertyChanging("Id");
                this._Id = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value);
                this.ReportPropertyChanged("Id");
                this.OnIdChanged();
            }
        }
        private int _Id;
        partial void OnIdChanging(int value);
        partial void OnIdChanged();
        /// <summary>
        /// 架构中不存在属性 DeptName 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public string DeptName
        {
            get
            {
                return this._DeptName;
            }
            set
            {
                this.OnDeptNameChanging(value);
                this.ReportPropertyChanging("DeptName");
                this._DeptName = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value, true);
                this.ReportPropertyChanged("DeptName");
                this.OnDeptNameChanged();
            }
        }
        private string _DeptName;
        partial void OnDeptNameChanging(string value);
        partial void OnDeptNameChanged();
        /// <summary>
        /// 架构中不存在属性 TypeId 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public global::System.Nullable<int> TypeId
        {
            get
            {
                return this._TypeId;
            }
            set
            {
                this.OnTypeIdChanging(value);
                this.ReportPropertyChanging("TypeId");
                this._TypeId = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value);
                this.ReportPropertyChanged("TypeId");
                this.OnTypeIdChanged();
            }
        }
        private global::System.Nullable<int> _TypeId;
        partial void OnTypeIdChanging(global::System.Nullable<int> value);
        partial void OnTypeIdChanged();
        /// <summary>
        /// 架构中不存在属性 IsDel 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public global::System.Nullable<bool> IsDel
        {
            get
            {
                return this._IsDel;
            }
            set
            {
                this.OnIsDelChanging(value);
                this.ReportPropertyChanging("IsDel");
                this._IsDel = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value);
                this.ReportPropertyChanged("IsDel");
                this.OnIsDelChanged();
            }
        }
        private global::System.Nullable<bool> _IsDel;
        partial void OnIsDelChanging(global::System.Nullable<bool> value);
        partial void OnIsDelChanged();
        /// <summary>
        /// 架构中不存在属性 Sort 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public global::System.Nullable<int> Sort
        {
            get
            {
                return this._Sort;
            }
            set
            {
                this.OnSortChanging(value);
                this.ReportPropertyChanging("Sort");
                this._Sort = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value);
                this.ReportPropertyChanged("Sort");
                this.OnSortChanged();
            }
        }
        private global::System.Nullable<int> _Sort;
        partial void OnSortChanging(global::System.Nullable<int> value);
        partial void OnSortChanged();
    }
    /// <summary>
    /// 架构中不存在 DB_EvaluationModel.T_Dictionary 的注释。
    /// </summary>
    /// <KeyProperties>
    /// Id
    /// </KeyProperties>
    [global::System.Data.Objects.DataClasses.EdmEntityTypeAttribute(NamespaceName="DB_EvaluationModel", Name="T_Dictionary")]
    [global::System.Runtime.Serialization.DataContractAttribute(IsReference=true)]
    [global::System.Serializable()]
    public partial class T_Dictionary : global::System.Data.Objects.DataClasses.EntityObject
    {
        /// <summary>
        /// 创建新的 T_Dictionary 对象。
        /// </summary>
        /// <param name="id">Id 的初始值。</param>
        /// <param name="displayText">DisplayText 的初始值。</param>
        /// <param name="type">Type 的初始值。</param>
        public static T_Dictionary CreateT_Dictionary(int id, string displayText, string type)
        {
            T_Dictionary t_Dictionary = new T_Dictionary();
            t_Dictionary.Id = id;
            t_Dictionary.DisplayText = displayText;
            t_Dictionary.Type = type;
            return t_Dictionary;
        }
        /// <summary>
        /// 架构中不存在属性 Id 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public int Id
        {
            get
            {
                return this._Id;
            }
            set
            {
                this.OnIdChanging(value);
                this.ReportPropertyChanging("Id");
                this._Id = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value);
                this.ReportPropertyChanged("Id");
                this.OnIdChanged();
            }
        }
        private int _Id;
        partial void OnIdChanging(int value);
        partial void OnIdChanged();
        /// <summary>
        /// 架构中不存在属性 DisplayText 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute(IsNullable=false)]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public string DisplayText
        {
            get
            {
                return this._DisplayText;
            }
            set
            {
                this.OnDisplayTextChanging(value);
                this.ReportPropertyChanging("DisplayText");
                this._DisplayText = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value, false);
                this.ReportPropertyChanged("DisplayText");
                this.OnDisplayTextChanged();
            }
        }
        private string _DisplayText;
        partial void OnDisplayTextChanging(string value);
        partial void OnDisplayTextChanged();
        /// <summary>
        /// 架构中不存在属性 Type 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute(IsNullable=false)]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public string Type
        {
            get
            {
                return this._Type;
            }
            set
            {
                this.OnTypeChanging(value);
                this.ReportPropertyChanging("Type");
                this._Type = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value, false);
                this.ReportPropertyChanged("Type");
                this.OnTypeChanged();
            }
        }
        private string _Type;
        partial void OnTypeChanging(string value);
        partial void OnTypeChanged();
        /// <summary>
        /// 架构中不存在属性 Txt 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public string Txt
        {
            get
            {
                return this._Txt;
            }
            set
            {
                this.OnTxtChanging(value);
                this.ReportPropertyChanging("Txt");
                this._Txt = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value, true);
                this.ReportPropertyChanged("Txt");
                this.OnTxtChanged();
            }
        }
        private string _Txt;
        partial void OnTxtChanging(string value);
        partial void OnTxtChanged();
        /// <summary>
        /// 架构中不存在属性 Sort 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public global::System.Nullable<int> Sort
        {
            get
            {
                return this._Sort;
            }
            set
            {
                this.OnSortChanging(value);
                this.ReportPropertyChanging("Sort");
                this._Sort = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value);
                this.ReportPropertyChanged("Sort");
                this.OnSortChanged();
            }
        }
        private global::System.Nullable<int> _Sort;
        partial void OnSortChanging(global::System.Nullable<int> value);
        partial void OnSortChanged();
    }
    /// <summary>
    /// 架构中不存在 DB_EvaluationModel.T_Sorce 的注释。
    /// </summary>
    /// <KeyProperties>
    /// Id
    /// </KeyProperties>
    [global::System.Data.Objects.DataClasses.EdmEntityTypeAttribute(NamespaceName="DB_EvaluationModel", Name="T_Sorce")]
    [global::System.Runtime.Serialization.DataContractAttribute(IsReference=true)]
    [global::System.Serializable()]
    public partial class T_Sorce : global::System.Data.Objects.DataClasses.EntityObject
    {
        /// <summary>
        /// 创建新的 T_Sorce 对象。
        /// </summary>
        /// <param name="id">Id 的初始值。</param>
        public static T_Sorce CreateT_Sorce(int id)
        {
            T_Sorce t_Sorce = new T_Sorce();
            t_Sorce.Id = id;
            return t_Sorce;
        }
        /// <summary>
        /// 架构中不存在属性 Id 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public int Id
        {
            get
            {
                return this._Id;
            }
            set
            {
                this.OnIdChanging(value);
                this.ReportPropertyChanging("Id");
                this._Id = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value);
                this.ReportPropertyChanged("Id");
                this.OnIdChanged();
            }
        }
        private int _Id;
        partial void OnIdChanging(int value);
        partial void OnIdChanged();
        /// <summary>
        /// 架构中不存在属性 DeptID 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public global::System.Nullable<int> DeptID
        {
            get
            {
                return this._DeptID;
            }
            set
            {
                this.OnDeptIDChanging(value);
                this.ReportPropertyChanging("DeptID");
                this._DeptID = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value);
                this.ReportPropertyChanged("DeptID");
                this.OnDeptIDChanged();
            }
        }
        private global::System.Nullable<int> _DeptID;
        partial void OnDeptIDChanging(global::System.Nullable<int> value);
        partial void OnDeptIDChanged();
        /// <summary>
        /// 架构中不存在属性 FromBehalfId 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public global::System.Nullable<int> FromBehalfId
        {
            get
            {
                return this._FromBehalfId;
            }
            set
            {
                this.OnFromBehalfIdChanging(value);
                this.ReportPropertyChanging("FromBehalfId");
                this._FromBehalfId = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value);
                this.ReportPropertyChanged("FromBehalfId");
                this.OnFromBehalfIdChanged();
            }
        }
        private global::System.Nullable<int> _FromBehalfId;
        partial void OnFromBehalfIdChanging(global::System.Nullable<int> value);
        partial void OnFromBehalfIdChanged();
        /// <summary>
        /// 架构中不存在属性 Sorce 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public global::System.Nullable<int> Sorce
        {
            get
            {
                return this._Sorce;
            }
            set
            {
                this.OnSorceChanging(value);
                this.ReportPropertyChanging("Sorce");
                this._Sorce = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value);
                this.ReportPropertyChanged("Sorce");
                this.OnSorceChanged();
            }
        }
        private global::System.Nullable<int> _Sorce;
        partial void OnSorceChanging(global::System.Nullable<int> value);
        partial void OnSorceChanged();
    }
    /// <summary>
    /// 架构中不存在 DB_EvaluationModel.T_SysUser 的注释。
    /// </summary>
    /// <KeyProperties>
    /// Id
    /// </KeyProperties>
    [global::System.Data.Objects.DataClasses.EdmEntityTypeAttribute(NamespaceName="DB_EvaluationModel", Name="T_SysUser")]
    [global::System.Runtime.Serialization.DataContractAttribute(IsReference=true)]
    [global::System.Serializable()]
    public partial class T_SysUser : global::System.Data.Objects.DataClasses.EntityObject
    {
        /// <summary>
        /// 创建新的 T_SysUser 对象。
        /// </summary>
        /// <param name="id">Id 的初始值。</param>
        /// <param name="userAccount">UserAccount 的初始值。</param>
        /// <param name="pwd">Pwd 的初始值。</param>
        public static T_SysUser CreateT_SysUser(int id, string userAccount, string pwd)
        {
            T_SysUser t_SysUser = new T_SysUser();
            t_SysUser.Id = id;
            t_SysUser.UserAccount = userAccount;
            t_SysUser.Pwd = pwd;
            return t_SysUser;
        }
        /// <summary>
        /// 架构中不存在属性 Id 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public int Id
        {
            get
            {
                return this._Id;
            }
            set
            {
                this.OnIdChanging(value);
                this.ReportPropertyChanging("Id");
                this._Id = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value);
                this.ReportPropertyChanged("Id");
                this.OnIdChanged();
            }
        }
        private int _Id;
        partial void OnIdChanging(int value);
        partial void OnIdChanged();
        /// <summary>
        /// 架构中不存在属性 DisplayName 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public string DisplayName
        {
            get
            {
                return this._DisplayName;
            }
            set
            {
                this.OnDisplayNameChanging(value);
                this.ReportPropertyChanging("DisplayName");
                this._DisplayName = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value, true);
                this.ReportPropertyChanged("DisplayName");
                this.OnDisplayNameChanged();
            }
        }
        private string _DisplayName;
        partial void OnDisplayNameChanging(string value);
        partial void OnDisplayNameChanged();
        /// <summary>
        /// 架构中不存在属性 UserAccount 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute(IsNullable=false)]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public string UserAccount
        {
            get
            {
                return this._UserAccount;
            }
            set
            {
                this.OnUserAccountChanging(value);
                this.ReportPropertyChanging("UserAccount");
                this._UserAccount = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value, false);
                this.ReportPropertyChanged("UserAccount");
                this.OnUserAccountChanged();
            }
        }
        private string _UserAccount;
        partial void OnUserAccountChanging(string value);
        partial void OnUserAccountChanged();
        /// <summary>
        /// 架构中不存在属性 Pwd 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute(IsNullable=false)]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public string Pwd
        {
            get
            {
                return this._Pwd;
            }
            set
            {
                this.OnPwdChanging(value);
                this.ReportPropertyChanging("Pwd");
                this._Pwd = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value, false);
                this.ReportPropertyChanged("Pwd");
                this.OnPwdChanged();
            }
        }
        private string _Pwd;
        partial void OnPwdChanging(string value);
        partial void OnPwdChanged();
        /// <summary>
        /// 架构中不存在属性 Sex 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public global::System.Nullable<bool> Sex
        {
            get
            {
                return this._Sex;
            }
            set
            {
                this.OnSexChanging(value);
                this.ReportPropertyChanging("Sex");
                this._Sex = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value);
                this.ReportPropertyChanged("Sex");
                this.OnSexChanged();
            }
        }
        private global::System.Nullable<bool> _Sex;
        partial void OnSexChanging(global::System.Nullable<bool> value);
        partial void OnSexChanged();
        /// <summary>
        /// 架构中不存在属性 IsDel 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public global::System.Nullable<bool> IsDel
        {
            get
            {
                return this._IsDel;
            }
            set
            {
                this.OnIsDelChanging(value);
                this.ReportPropertyChanging("IsDel");
                this._IsDel = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value);
                this.ReportPropertyChanged("IsDel");
                this.OnIsDelChanged();
            }
        }
        private global::System.Nullable<bool> _IsDel;
        partial void OnIsDelChanging(global::System.Nullable<bool> value);
        partial void OnIsDelChanged();
        /// <summary>
        /// 架构中不存在属性 IsSuperAdmin 的注释。
        /// </summary>
        [global::System.Data.Objects.DataClasses.EdmScalarPropertyAttribute()]
        [global::System.Runtime.Serialization.DataMemberAttribute()]
        public global::System.Nullable<bool> IsSuperAdmin
        {
            get
            {
                return this._IsSuperAdmin;
            }
            set
            {
                this.OnIsSuperAdminChanging(value);
                this.ReportPropertyChanging("IsSuperAdmin");
                this._IsSuperAdmin = global::System.Data.Objects.DataClasses.StructuralObject.SetValidValue(value);
                this.ReportPropertyChanged("IsSuperAdmin");
                this.OnIsSuperAdminChanged();
            }
        }
        private global::System.Nullable<bool> _IsSuperAdmin;
        partial void OnIsSuperAdminChanging(global::System.Nullable<bool> value);
        partial void OnIsSuperAdminChanged();
    }
}