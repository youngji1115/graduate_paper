.class public Lcom/cashwalk/cashwalk/dialog/ProfileDialog;
.super Landroid/app/Dialog;
.source "ProfileDialog.java"


# instance fields
.field private friend:Landroid/widget/TextView;

.field private image:Landroid/widget/ImageView;

.field private nickname:Landroid/widget/TextView;

.field private pref:Landroid/content/SharedPreferences;

.field private rank:Landroid/widget/TextView;

.field private selected:I

.field private steps:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cashwalk/cashwalk/util/network/model/Rank;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/cashwalk/cashwalk/util/network/model/Rank;

    .prologue
    const v4, 0x7f020221

    .line 30
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v2, 0x0

    iput v2, p0, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;->selected:I

    .line 32
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;->pref:Landroid/content/SharedPreferences;

    .line 34
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;->requestWindowFeature(I)Z

    .line 35
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 36
    .local v0, "lpWindow":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 37
    const v2, 0x3f4ccccd    # 0.8f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 38
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 40
    const v2, 0x7f04007f

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;->setContentView(I)V

    .line 42
    const v2, 0x7f10008f

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;->image:Landroid/widget/ImageView;

    .line 43
    const v2, 0x7f1001f1

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;->nickname:Landroid/widget/TextView;

    .line 44
    const v2, 0x7f100215

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;->rank:Landroid/widget/TextView;

    .line 45
    const v2, 0x7f10030f

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;->steps:Landroid/widget/TextView;

    .line 48
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;->nickname:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/cashwalk/cashwalk/util/network/model/Rank;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;->rank:Landroid/widget/TextView;

    iget v3, p2, Lcom/cashwalk/cashwalk/util/network/model/Rank;->rank:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;->steps:Landroid/widget/TextView;

    iget v3, p2, Lcom/cashwalk/cashwalk/util/network/model/Rank;->totalSteps:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p2, Lcom/cashwalk/cashwalk/util/network/model/Rank;->profileUrl:Ljava/lang/String;

    .line 53
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;->image:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;->image:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method
