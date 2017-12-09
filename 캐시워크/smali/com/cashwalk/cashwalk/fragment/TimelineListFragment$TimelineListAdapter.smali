.class Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TimelineListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimelineListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;
    }
.end annotation


# instance fields
.field private boldSpan:Landroid/text/style/StyleSpan;

.field private colorSpanAccent:Landroid/text/style/ForegroundColorSpan;

.field private colorSpanGrey:Landroid/text/style/ForegroundColorSpan;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;
    .param p2, "list"    # Ljava/util/ArrayList;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 143
    iput-object p2, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->data:Ljava/util/ArrayList;

    .line 144
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->data:Ljava/util/ArrayList;

    new-instance v1, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$1;-><init>(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 150
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->data:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 152
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->colorSpanAccent:Landroid/text/style/ForegroundColorSpan;

    .line 153
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->colorSpanGrey:Landroid/text/style/ForegroundColorSpan;

    .line 154
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->boldSpan:Landroid/text/style/StyleSpan;

    .line 155
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 162
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
    .line 167
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 170
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
    .line 175
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 182
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 183
    if-nez p2, :cond_2

    .line 184
    new-instance v5, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;-><init>(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$1;)V

    .line 185
    .local v5, "vh":Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    invoke-virtual {v6}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0400b7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 187
    const v6, 0x7f100422

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;->mainText:Landroid/widget/TextView;

    .line 188
    const v6, 0x7f100423

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;->subText:Landroid/widget/TextView;

    .line 190
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 195
    :goto_0
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    .line 197
    .local v0, "item":Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    new-instance v2, Landroid/text/SpannableString;

    iget-object v6, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->habit:Lcom/cashwalk/cashwalk/util/network/model/Habit;

    iget-object v6, v6, Lcom/cashwalk/cashwalk/util/network/model/Habit;->title:Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 198
    .local v2, "ss2":Landroid/text/SpannableString;
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->colorSpanAccent:Landroid/text/style/ForegroundColorSpan;

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x22

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 199
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->boldSpan:Landroid/text/style/StyleSpan;

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x22

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 200
    const/4 v3, 0x0

    .line 201
    .local v3, "ss3":Landroid/text/SpannableString;
    const-string v6, "CREATE"

    iget-object v7, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->habit:Lcom/cashwalk/cashwalk/util/network/model/Habit;

    iget-object v7, v7, Lcom/cashwalk/cashwalk/util/network/model/Habit;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 202
    new-instance v3, Landroid/text/SpannableString;

    .end local v3    # "ss3":Landroid/text/SpannableString;
    const-string v6, " \uc2b5\uad00\uc744 \ucd94\uac00\ud588\uc5b4\uc694. "

    invoke-direct {v3, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 203
    .restart local v3    # "ss3":Landroid/text/SpannableString;
    :cond_0
    const-string v6, "ACHIEVE"

    iget-object v7, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->habit:Lcom/cashwalk/cashwalk/util/network/model/Habit;

    iget-object v7, v7, Lcom/cashwalk/cashwalk/util/network/model/Habit;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 204
    new-instance v3, Landroid/text/SpannableString;

    .end local v3    # "ss3":Landroid/text/SpannableString;
    const-string v6, " \uc2b5\uad00\uc744 \ub2ec\uc131\ud588\uc5b4\uc694. "

    invoke-direct {v3, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 206
    .restart local v3    # "ss3":Landroid/text/SpannableString;
    :cond_1
    new-instance v4, Landroid/text/SpannableString;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->dateTime:Lorg/joda/time/DateTime;

    invoke-static {v6, v7}, Lcom/cashwalk/cashwalk/util/Utils;->getAgoString(Landroid/content/Context;Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 207
    .local v4, "ss4":Landroid/text/SpannableString;
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->colorSpanGrey:Landroid/text/style/ForegroundColorSpan;

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x22

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 208
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0xb

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x22

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 210
    iget-object v6, v5, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;->mainText:Landroid/widget/TextView;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/CharSequence;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v6, v5, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;->subText:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\ucc38\uc5ec\uc790 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->addCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\uba85"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | \ub313\uae00 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->commentCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\uac1c"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :goto_1
    new-instance v6, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$2;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$2;-><init>(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    return-object p2

    .line 192
    .end local v0    # "item":Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    .end local v2    # "ss2":Landroid/text/SpannableString;
    .end local v3    # "ss3":Landroid/text/SpannableString;
    .end local v4    # "ss4":Landroid/text/SpannableString;
    .end local v5    # "vh":Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;

    .restart local v5    # "vh":Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;
    goto/16 :goto_0

    .line 213
    .end local v5    # "vh":Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;
    :cond_3
    if-nez p2, :cond_6

    .line 214
    new-instance v5, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;-><init>(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$1;)V

    .line 215
    .restart local v5    # "vh":Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    invoke-virtual {v6}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0400b8

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 217
    const v6, 0x7f100422

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;->mainText:Landroid/widget/TextView;

    .line 218
    const v6, 0x7f100423

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;->subText:Landroid/widget/TextView;

    .line 219
    const v6, 0x7f1001f0

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;->profile:Landroid/widget/ImageView;

    .line 221
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 226
    :goto_2
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    .line 228
    .restart local v0    # "item":Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    new-instance v1, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v7, v7, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\ub2d8\uc774 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 229
    .local v1, "ss1":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/SpannableString;

    iget-object v6, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->habit:Lcom/cashwalk/cashwalk/util/network/model/Habit;

    iget-object v6, v6, Lcom/cashwalk/cashwalk/util/network/model/Habit;->title:Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 230
    .restart local v2    # "ss2":Landroid/text/SpannableString;
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->colorSpanAccent:Landroid/text/style/ForegroundColorSpan;

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x22

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 231
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->boldSpan:Landroid/text/style/StyleSpan;

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x22

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 232
    const/4 v3, 0x0

    .line 233
    .restart local v3    # "ss3":Landroid/text/SpannableString;
    const-string v6, "CREATE"

    iget-object v7, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->habit:Lcom/cashwalk/cashwalk/util/network/model/Habit;

    iget-object v7, v7, Lcom/cashwalk/cashwalk/util/network/model/Habit;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 234
    new-instance v3, Landroid/text/SpannableString;

    .end local v3    # "ss3":Landroid/text/SpannableString;
    const-string v6, " \uc2b5\uad00\uc744 \ucd94\uac00\ud588\uc5b4\uc694. "

    invoke-direct {v3, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 235
    .restart local v3    # "ss3":Landroid/text/SpannableString;
    :cond_4
    const-string v6, "ACHIEVE"

    iget-object v7, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->habit:Lcom/cashwalk/cashwalk/util/network/model/Habit;

    iget-object v7, v7, Lcom/cashwalk/cashwalk/util/network/model/Habit;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 236
    new-instance v3, Landroid/text/SpannableString;

    .end local v3    # "ss3":Landroid/text/SpannableString;
    const-string v6, " \uc2b5\uad00\uc744 \ub2ec\uc131\ud588\uc5b4\uc694. "

    invoke-direct {v3, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 238
    .restart local v3    # "ss3":Landroid/text/SpannableString;
    :cond_5
    new-instance v4, Landroid/text/SpannableString;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->dateTime:Lorg/joda/time/DateTime;

    invoke-static {v6, v7}, Lcom/cashwalk/cashwalk/util/Utils;->getAgoString(Landroid/content/Context;Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 239
    .restart local v4    # "ss4":Landroid/text/SpannableString;
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->colorSpanGrey:Landroid/text/style/ForegroundColorSpan;

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x22

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 240
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0xb

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x22

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 242
    iget-object v6, v5, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;->mainText:Landroid/widget/TextView;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/CharSequence;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    const/4 v8, 0x3

    aput-object v4, v7, v8

    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v6, v5, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;->subText:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\ucc38\uc5ec\uc790 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->addCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\uba85"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | \ub313\uae00 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->commentCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\uac1c"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v6, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v6, v6, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 246
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v6

    iget-object v7, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v7, v7, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/util/AWSHelper;->AWS_getPreSignedURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    new-instance v7, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v7}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    const v7, 0x7f020221

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    iget-object v7, v5, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;->profile:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 223
    .end local v0    # "item":Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    .end local v1    # "ss1":Landroid/text/SpannableString;
    .end local v2    # "ss2":Landroid/text/SpannableString;
    .end local v3    # "ss3":Landroid/text/SpannableString;
    .end local v4    # "ss4":Landroid/text/SpannableString;
    .end local v5    # "vh":Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;

    .restart local v5    # "vh":Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;
    goto/16 :goto_2

    .line 248
    .restart local v0    # "item":Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    .restart local v1    # "ss1":Landroid/text/SpannableString;
    .restart local v2    # "ss2":Landroid/text/SpannableString;
    .restart local v3    # "ss3":Landroid/text/SpannableString;
    .restart local v4    # "ss4":Landroid/text/SpannableString;
    :cond_7
    iget-object v6, v5, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;->profile:Landroid/widget/ImageView;

    const v7, 0x7f020221

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method
