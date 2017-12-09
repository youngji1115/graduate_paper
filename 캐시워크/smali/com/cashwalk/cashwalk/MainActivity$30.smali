.class Lcom/cashwalk/cashwalk/MainActivity$30;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity;->setCashwakAdBanner(ZLcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/MainActivity;

.field final synthetic val$adbanner:Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity;Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 1624
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$30;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/MainActivity$30;->val$adbanner:Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1628
    iget-object v7, p0, Lcom/cashwalk/cashwalk/MainActivity$30;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "USER_ID"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1629
    .local v6, "userId":Ljava/lang/String;
    iget-object v7, p0, Lcom/cashwalk/cashwalk/MainActivity$30;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "GENDER"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1631
    .local v2, "gender":Ljava/lang/String;
    iget-object v7, p0, Lcom/cashwalk/cashwalk/MainActivity$30;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "BIRTHDAY"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1632
    .local v1, "birthday":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1633
    .local v0, "birthYear":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1634
    iget-object v7, p0, Lcom/cashwalk/cashwalk/MainActivity$30;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "BIRTHDAY"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1638
    :cond_0
    const-string v0, "16"

    .line 1640
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/cashwalk/cashwalk/AppConstants;->CASHWALK_AD_CLICK_URL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ad="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/cashwalk/cashwalk/MainActivity$30;->val$adbanner:Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;

    invoke-virtual {v8}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;->getData()Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&partner="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/cashwalk/cashwalk/MainActivity$30;->val$adbanner:Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;

    .line 1641
    invoke-virtual {v8}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;->getData()Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->getPartner()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&client="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&gender="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&age="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&redirect="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/cashwalk/cashwalk/MainActivity$30;->val$adbanner:Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;

    .line 1645
    invoke-virtual {v8}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;->getData()Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->getDetailUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1647
    .local v3, "goUrl":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#### \uad11\uace0 \uc774\ub3d9 => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1649
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1650
    .local v4, "i":Landroid/content/Intent;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1651
    .local v5, "u":Landroid/net/Uri;
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1652
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1653
    iget-object v7, p0, Lcom/cashwalk/cashwalk/MainActivity$30;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-virtual {v7, v4}, Lcom/cashwalk/cashwalk/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1659
    iget-object v7, p0, Lcom/cashwalk/cashwalk/MainActivity$30;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\uad11\uace0 \uc774\ub3d9 => "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/cashwalk/cashwalk/MainActivity$30;->val$adbanner:Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;

    invoke-virtual {v9}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;->getData()Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->getDetailUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1660
    return-void
.end method
