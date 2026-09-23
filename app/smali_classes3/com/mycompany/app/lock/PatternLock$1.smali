.class Lcom/mycompany/app/lock/PatternLock$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/PatternLock$DotState;

.field public final synthetic f:Lcom/mycompany/app/lock/PatternLock;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PatternLock;Lcom/mycompany/app/lock/PatternLock$DotState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/PatternLock$1;->f:Lcom/mycompany/app/lock/PatternLock;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/lock/PatternLock$1;->c:Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternLock$1;->f:Lcom/mycompany/app/lock/PatternLock;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/lock/PatternLock;->p:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    iget v2, v0, Lcom/mycompany/app/lock/PatternLock;->o:I

    .line 7
    .line 8
    int-to-float v2, v2

    .line 9
    iget v3, v0, Lcom/mycompany/app/lock/PatternLock;->q:I

    .line 10
    .line 11
    int-to-long v3, v3

    .line 12
    iget-object v5, v0, Lcom/mycompany/app/lock/PatternLock;->H:Landroid/view/animation/Interpolator;

    .line 13
    .line 14
    iget-object v6, p0, Lcom/mycompany/app/lock/PatternLock$1;->c:Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/lock/PatternLock;->j(FFJLandroid/view/animation/Interpolator;Lcom/mycompany/app/lock/PatternLock$DotState;Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
