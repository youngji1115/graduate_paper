.class public Lcom/cashwalk/cashwalk/activity/TOSActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TOSActivity.java"


# static fields
.field public static final TOS1_URL:Ljava/lang/String; = "https://docs.google.com/document/d/1DIG8zc_bsu2IjXlnkc7kBU4-idQErEeaFL7viPagefM/pub"

.field public static final TOS2_URL:Ljava/lang/String; = "https://docs.google.com/document/d/1_nB5oMA1BBlycwbQlyT9Q_CtSD3_GoJmWG9hNkgUZqY/pub"

.field public static final TOS3_URL:Ljava/lang/String; = "https://docs.google.com/document/d/1gccy2ta-qplk6azbvdU9RE72L_T9JqSK-ALkc1d3M_Q/pub"

.field public static final TOS4_URL:Ljava/lang/String; = "https://docs.google.com/document/d/1PbE4F46PeFu8YrGPI3jINDB3nmkWMlQtlgQZdDAEfBk/pub"


# instance fields
.field private check:[Z

.field private pref:Landroid/content/SharedPreferences;

.field private user:Lcom/cashwalk/cashwalk/util/network/model/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity;->check:[Z

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/TOSActivity;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/TOSActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity;->check:[Z

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/TOSActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/TOSActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/TOSActivity;)Lcom/cashwalk/cashwalk/util/network/model/User;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/TOSActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TOSActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->startActivity(Landroid/content/Intent;)V

    .line 173
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->finish()V

    .line 174
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f040052

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->setContentView(I)V

    .line 39
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/cashwalk/cashwalk/activity/TOSActivity;->pref:Landroid/content/SharedPreferences;

    .line 42
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/User;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/cashwalk/cashwalk/activity/TOSActivity;->user:Lcom/cashwalk/cashwalk/util/network/model/User;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    const v1, 0x7f1002b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/webkit/WebView;

    .line 49
    .local v10, "tos1":Landroid/webkit/WebView;
    const v1, 0x7f1002b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/webkit/WebView;

    .line 50
    .local v11, "tos2":Landroid/webkit/WebView;
    const v1, 0x7f1002b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/webkit/WebView;

    .line 51
    .local v12, "tos3":Landroid/webkit/WebView;
    const v1, 0x7f1002b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/webkit/WebView;

    .line 53
    .local v13, "tos4":Landroid/webkit/WebView;
    const v1, 0x7f1002b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 54
    .local v14, "view1":Landroid/widget/TextView;
    const v1, 0x7f1002b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 55
    .local v15, "view2":Landroid/widget/TextView;
    const v1, 0x7f1002b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 56
    .local v16, "view3":Landroid/widget/TextView;
    const v1, 0x7f1002bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 58
    .local v17, "view4":Landroid/widget/TextView;
    const v1, 0x7f1002b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 59
    .local v3, "check1":Landroid/widget/CheckBox;
    const v1, 0x7f1002b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 60
    .local v4, "check2":Landroid/widget/CheckBox;
    const v1, 0x7f1002b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 61
    .local v5, "check3":Landroid/widget/CheckBox;
    const v1, 0x7f1002ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 62
    .local v6, "check4":Landroid/widget/CheckBox;
    const v1, 0x7f1002bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 64
    .local v7, "checkAll":Landroid/widget/CheckBox;
    const-string v1, "https://docs.google.com/document/d/1DIG8zc_bsu2IjXlnkc7kBU4-idQErEeaFL7viPagefM/pub"

    invoke-virtual {v10, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 65
    const-string v1, "https://docs.google.com/document/d/1_nB5oMA1BBlycwbQlyT9Q_CtSD3_GoJmWG9hNkgUZqY/pub"

    invoke-virtual {v11, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 66
    const-string v1, "https://docs.google.com/document/d/1gccy2ta-qplk6azbvdU9RE72L_T9JqSK-ALkc1d3M_Q/pub"

    invoke-virtual {v12, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 67
    const-string v1, "https://docs.google.com/document/d/1PbE4F46PeFu8YrGPI3jINDB3nmkWMlQtlgQZdDAEfBk/pub"

    invoke-virtual {v13, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 69
    new-instance v1, Lcom/cashwalk/cashwalk/activity/TOSActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/TOSActivity;)V

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v1, Lcom/cashwalk/cashwalk/activity/TOSActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/TOSActivity;)V

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance v1, Lcom/cashwalk/cashwalk/activity/TOSActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/TOSActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v1, Lcom/cashwalk/cashwalk/activity/TOSActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/TOSActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    new-instance v1, Lcom/cashwalk/cashwalk/activity/TOSActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity$5;-><init>(Lcom/cashwalk/cashwalk/activity/TOSActivity;)V

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    new-instance v1, Lcom/cashwalk/cashwalk/activity/TOSActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity$6;-><init>(Lcom/cashwalk/cashwalk/activity/TOSActivity;)V

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    new-instance v1, Lcom/cashwalk/cashwalk/activity/TOSActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity$7;-><init>(Lcom/cashwalk/cashwalk/activity/TOSActivity;)V

    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    new-instance v1, Lcom/cashwalk/cashwalk/activity/TOSActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity$8;-><init>(Lcom/cashwalk/cashwalk/activity/TOSActivity;)V

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    new-instance v1, Lcom/cashwalk/cashwalk/activity/TOSActivity$9;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/cashwalk/cashwalk/activity/TOSActivity$9;-><init>(Lcom/cashwalk/cashwalk/activity/TOSActivity;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    const v1, 0x7f1002bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/TOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 142
    .local v9, "next":Landroid/widget/Button;
    new-instance v1, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/cashwalk/cashwalk/activity/TOSActivity$10;-><init>(Lcom/cashwalk/cashwalk/activity/TOSActivity;)V

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    return-void

    .line 43
    .end local v3    # "check1":Landroid/widget/CheckBox;
    .end local v4    # "check2":Landroid/widget/CheckBox;
    .end local v5    # "check3":Landroid/widget/CheckBox;
    .end local v6    # "check4":Landroid/widget/CheckBox;
    .end local v7    # "checkAll":Landroid/widget/CheckBox;
    .end local v9    # "next":Landroid/widget/Button;
    .end local v10    # "tos1":Landroid/webkit/WebView;
    .end local v11    # "tos2":Landroid/webkit/WebView;
    .end local v12    # "tos3":Landroid/webkit/WebView;
    .end local v13    # "tos4":Landroid/webkit/WebView;
    .end local v14    # "view1":Landroid/widget/TextView;
    .end local v15    # "view2":Landroid/widget/TextView;
    .end local v16    # "view3":Landroid/widget/TextView;
    .end local v17    # "view4":Landroid/widget/TextView;
    :catch_0
    move-exception v8

    .line 44
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    invoke-static {v8}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
