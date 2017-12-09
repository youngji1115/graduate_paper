.class Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/lockscreen/AppDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppDialogAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pm:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;)V
    .locals 4
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 123
    invoke-static {p1}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->access$400(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->pm:Landroid/content/pm/PackageManager;

    .line 124
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->pm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->appList:Ljava/util/List;

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->appList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->appList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 128
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->appList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 130
    add-int/lit8 v0, v0, -0x1

    .line 126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->appList:Ljava/util/List;

    new-instance v3, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;Lcom/cashwalk/cashwalk/lockscreen/AppDialog;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    return-void
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->appList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->appList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->appList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->appList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 162
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 169
    if-nez p2, :cond_0

    .line 170
    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$ViewHolder;

    invoke-direct {v1, p0, v4}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$ViewHolder;-><init>(Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;Lcom/cashwalk/cashwalk/lockscreen/AppDialog$1;)V

    .line 171
    .local v1, "vh":Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$ViewHolder;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400a9

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 173
    const v2, 0x7f100092

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 174
    const v2, 0x7f100093

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 176
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 181
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->appList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 183
    .local v0, "item":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v2, v1, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    return-object p2

    .line 178
    .end local v0    # "item":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "vh":Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$ViewHolder;

    .restart local v1    # "vh":Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$ViewHolder;
    goto :goto_0
.end method
