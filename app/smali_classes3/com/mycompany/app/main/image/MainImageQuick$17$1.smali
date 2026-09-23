.class Lcom/mycompany/app/main/image/MainImageQuick$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageQuick$17;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageQuick$17;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$17$1;->c:Lcom/mycompany/app/main/image/MainImageQuick$17;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick$17$1;->c:Lcom/mycompany/app/main/image/MainImageQuick$17;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick$17;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageQuick$17;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImageQuick;->C0()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
