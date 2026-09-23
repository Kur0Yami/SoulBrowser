.class final Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;
.super Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
        "Landroid/animation/ObjectAnimator;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:[I


# instance fields
.field public a:F

.field public b:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->b:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 2
    .line 3
    const/16 v0, 0xbb8

    .line 4
    .line 5
    const/16 v1, 0x1194

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/16 v3, 0x5dc

    .line 9
    .line 10
    filled-new-array {v2, v3, v0, v1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->c:[I

    .line 15
    .line 16
    new-instance v0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$3;

    .line 17
    .line 18
    const-string v1, "animationFraction"

    .line 19
    .line 20
    const-class v2, Ljava/lang/Float;

    .line 21
    .line 22
    invoke-direct {v0, v2, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$4;

    .line 26
    .line 27
    const-string v1, "completeEndFraction"

    .line 28
    .line 29
    invoke-direct {v0, v2, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method
