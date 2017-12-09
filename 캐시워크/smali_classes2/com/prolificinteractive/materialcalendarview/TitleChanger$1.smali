.class Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;
.super Lcom/prolificinteractive/materialcalendarview/AnimatorListener;
.source "TitleChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prolificinteractive/materialcalendarview/TitleChanger;->doChange(JLcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

.field final synthetic val$newTitle:Ljava/lang/CharSequence;

.field final synthetic val$translation:I


# direct methods
.method constructor <init>(Lcom/prolificinteractive/materialcalendarview/TitleChanger;Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    iput-object p2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->val$newTitle:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->val$translation:I

    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/AnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    invoke-static {v1}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->access$000(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->access$100(Lcom/prolificinteractive/materialcalendarview/TitleChanger;Landroid/widget/TextView;I)V

    .line 97
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->access$000(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 98
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x0

    .line 102
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    invoke-static {v1}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->access$000(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->val$newTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    invoke-static {v2}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->access$000(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)Landroid/widget/TextView;

    move-result-object v2

    iget v3, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->val$translation:I

    invoke-static {v1, v2, v3}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->access$100(Lcom/prolificinteractive/materialcalendarview/TitleChanger;Landroid/widget/TextView;I)V

    .line 105
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    invoke-static {v1}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->access$000(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 106
    .local v0, "viewPropertyAnimator":Landroid/view/ViewPropertyAnimator;
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    invoke-static {v1}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->access$200(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 107
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 112
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    .line 114
    invoke-static {v2}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->access$400(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    .line 115
    invoke-static {v2}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->access$300(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/prolificinteractive/materialcalendarview/AnimatorListener;

    invoke-direct {v2}, Lcom/prolificinteractive/materialcalendarview/AnimatorListener;-><init>()V

    .line 116
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 118
    return-void

    .line 109
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method
