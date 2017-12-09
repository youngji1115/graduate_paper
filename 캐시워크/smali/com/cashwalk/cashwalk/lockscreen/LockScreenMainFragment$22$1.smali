.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "LockScreenMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 1067
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$2400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1069
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$2300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;

    iget v2, v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;->val$px:I

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;

    iget v3, v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;->val$px:I

    invoke-virtual {v1, v2, v3}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    const v2, 0x7f0201b9

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    :goto_0
    return-void

    .line 1070
    :catch_0
    move-exception v0

    .line 1071
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1072
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    const v3, 0x7f090141

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
