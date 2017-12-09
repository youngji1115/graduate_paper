.class Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "StepperIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badoualy/stepperindicator/StepperIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentStep:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1171
    new-instance v0, Lcom/badoualy/stepperindicator/StepperIndicator$SavedState$1;

    invoke-direct {v0}, Lcom/badoualy/stepperindicator/StepperIndicator$SavedState$1;-><init>()V

    sput-object v0, Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1189
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;->mCurrentStep:I

    .line 1191
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/badoualy/stepperindicator/StepperIndicator$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/badoualy/stepperindicator/StepperIndicator$1;

    .prologue
    .line 1168
    invoke-direct {p0, p1}, Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 1185
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1186
    return-void
.end method

.method static synthetic access$200(Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;

    .prologue
    .line 1168
    iget v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;->mCurrentStep:I

    return v0
.end method

.method static synthetic access$202(Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;
    .param p1, "x1"    # I

    .prologue
    .line 1168
    iput p1, p0, Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;->mCurrentStep:I

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1195
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1196
    iget v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;->mCurrentStep:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1197
    return-void
.end method
