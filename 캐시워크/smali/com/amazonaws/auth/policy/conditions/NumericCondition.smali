.class public Lcom/amazonaws/auth/policy/conditions/NumericCondition;
.super Lcom/amazonaws/auth/policy/Condition;
.source "NumericCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/conditions/NumericCondition$NumericComparisonType;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/policy/conditions/NumericCondition$NumericComparisonType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Lcom/amazonaws/auth/policy/conditions/NumericCondition$NumericComparisonType;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/Condition;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/conditions/NumericCondition$NumericComparisonType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Condition;->type:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/amazonaws/auth/policy/Condition;->conditionKey:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Condition;->values:Ljava/util/List;

    .line 52
    return-void
.end method
