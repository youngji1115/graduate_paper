.class public Lcom/cashwalk/cashwalk/util/CommonImageView;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "CommonImageView.java"


# instance fields
.field private iv_photo_view:Luk/co/senab/photoview/PhotoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v4, 0x7f090141

    const/4 v3, 0x0

    .line 21
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v2, 0x7f040033

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/util/CommonImageView;->setContentView(I)V

    .line 24
    const v2, 0x7f1001b7

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/util/CommonImageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Luk/co/senab/photoview/PhotoView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/util/CommonImageView;->iv_photo_view:Luk/co/senab/photoview/PhotoView;

    .line 26
    const-string v1, ""

    .line 27
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/CommonImageView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 28
    .local v0, "getData":Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 29
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 30
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    :goto_0
    const-string v2, "nickname"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/CommonImageView;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/CommonImageView;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const-string v3, "nickname"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 48
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/util/CommonImageView;->iv_photo_view:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 54
    :cond_1
    :goto_2
    return-void

    .line 32
    :cond_2
    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/util/CommonImageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 33
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/CommonImageView;->finish()V

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/util/CommonImageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 44
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/CommonImageView;->finish()V

    goto :goto_1

    .line 51
    :cond_4
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/util/CommonImageView;->iv_photo_view:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 63
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 60
    :pswitch_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/CommonImageView;->finish()V

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
