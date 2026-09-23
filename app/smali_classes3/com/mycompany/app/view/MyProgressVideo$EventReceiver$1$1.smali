.class Lcom/mycompany/app/view/MyProgressVideo$EventReceiver$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/mycompany/app/view/MyProgressVideo$EventReceiver$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyProgressVideo$EventReceiver$1;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressVideo$EventReceiver$1$1;->f:Lcom/mycompany/app/view/MyProgressVideo$EventReceiver$1;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/view/MyProgressVideo$EventReceiver$1$1;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressVideo$EventReceiver$1$1;->f:Lcom/mycompany/app/view/MyProgressVideo$EventReceiver$1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyProgressVideo$EventReceiver$1;->c:Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;->a:Lcom/mycompany/app/view/MyProgressVideo;

    .line 6
    .line 7
    sget v2, Lcom/mycompany/app/view/MyProgressVideo;->I:I

    .line 8
    .line 9
    iget v2, p0, Lcom/mycompany/app/view/MyProgressVideo$EventReceiver$1$1;->c:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyProgressVideo;->f(IZ)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lcom/mycompany/app/view/MyProgressVideo$EventReceiver$1;->c:Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;->a:Lcom/mycompany/app/view/MyProgressVideo;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressVideo;->invalidate()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
