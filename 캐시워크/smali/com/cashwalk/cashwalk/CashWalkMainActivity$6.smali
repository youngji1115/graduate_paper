.class Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "CashWalkMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/CashWalkMainActivity;->checkUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 712
    :try_start_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-virtual {v5}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-virtual {v6}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 714
    .local v3, "pinfo":Landroid/content/pm/PackageInfo;
    const-string/jumbo v5, "version"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 716
    .local v4, "version":I
    const/4 v2, 0x0

    .line 717
    .local v2, "must":I
    const-string v5, "must"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 718
    const-string v5, "must"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 721
    :cond_0
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v5, v4, :cond_1

    .line 724
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 725
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v5, v2, :cond_2

    .line 727
    iget-object v5, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    const v6, 0x7f090132

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$1;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$1;-><init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 735
    iget-object v5, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    const v6, 0x7f090101

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$2;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$2;-><init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 741
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 742
    iget-object v5, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    const v6, 0x7f0902e8

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 743
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 770
    .end local v0    # "alert":Landroid/app/AlertDialog$Builder;
    .end local v2    # "must":I
    .end local v3    # "pinfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "version":I
    :cond_1
    :goto_0
    return-void

    .line 746
    .restart local v0    # "alert":Landroid/app/AlertDialog$Builder;
    .restart local v2    # "must":I
    .restart local v3    # "pinfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "version":I
    :cond_2
    iget-object v5, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    const v6, 0x7f090132

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$3;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$3;-><init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 755
    iget-object v5, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    const v6, 0x7f090101

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$4;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$4;-><init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 762
    iget-object v5, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    const v6, 0x7f0902e7

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 763
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 767
    .end local v0    # "alert":Landroid/app/AlertDialog$Builder;
    .end local v2    # "must":I
    .end local v3    # "pinfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "version":I
    :catch_0
    move-exception v1

    .line 768
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
