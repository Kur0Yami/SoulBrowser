.class public Lcom/mycompany/app/lock/PatternLock$DotState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/lock/PatternLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DotState"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/lock/PatternLock$DotState;->b:F

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/lock/PatternLock$DotState;->c:F

    .line 8
    .line 9
    return-void
.end method
