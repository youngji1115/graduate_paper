.class Lcom/cashwalk/cashwalk/MainActivity$18;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity;->checkUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/MainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$18;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 664
    :try_start_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity$18;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-virtual {v5}, Lcom/cashwalk/cashwalk/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity$18;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-virtual {v6}, Lcom/cashwalk/cashwalk/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 666
    .local v3, "pinfo":Landroid/content/pm/PackageInfo;
    const-string/jumbo v5, "version"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 668
    .local v4, "version":I
    const/4 v2, 0x0

    .line 669
    .local v2, "must":I
    const-string v5, "must"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 670
    const-string v5, "must"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 673
    :cond_0
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v5, v4, :cond_1

    .line 676
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity$18;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 677
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v5, v2, :cond_2

    .line 679
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity$18;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v6, 0x7f090132

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/cashwalk/cashwalk/MainActivity$18$1;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/MainActivity$18$1;-><init>(Lcom/cashwalk/cashwalk/MainActivity$18;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 687
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity$18;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v6, 0x7f090101

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/cashwalk/cashwalk/MainActivity$18$2;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/MainActivity$18$2;-><init>(Lcom/cashwalk/cashwalk/MainActivity$18;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 693
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 694
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity$18;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v6, 0x7f0902e8

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 695
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 722
    .end local v0    # "alert":Landroid/app/AlertDialog$Builder;
    .end local v2    # "must":I
    .end local v3    # "pinfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "version":I
    :cond_1
    :goto_0
    return-void

    .line 698
    .restart local v0    # "alert":Landroid/app/AlertDialog$Builder;
    .restart local v2    # "must":I
    .restart local v3    # "pinfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "version":I
    :cond_2
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity$18;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v6, 0x7f090132

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/cashwalk/cashwalk/MainActivity$18$3;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/MainActivity$18$3;-><init>(Lcom/cashwalk/cashwalk/MainActivity$18;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 707
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity$18;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v6, 0x7f090101

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/cashwalk/cashwalk/MainActivity$18$4;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/MainActivity$18$4;-><init>(Lcom/cashwalk/cashwalk/MainActivity$18;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 714
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity$18;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v6, 0x7f0902e7

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 715
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 719
    .end local v0    # "alert":Landroid/app/AlertDialog$Builder;
    .end local v2    # "must":I
    .end local v3    # "pinfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "version":I
    :catch_0
    move-exception v1

    .line 720
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
