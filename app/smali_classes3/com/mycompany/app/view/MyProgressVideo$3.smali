.class Lcom/mycompany/app/view/MyProgressVideo$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyProgressVideo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyProgressVideo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressVideo$3;->c:Lcom/mycompany/app/view/MyProgressVideo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressVideo$3;->c:Lcom/mycompany/app/view/MyProgressVideo;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/view/MyProgressVideo;->B:I

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyProgressVideo;->C:Z

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/view/MyProgressVideo;->l:Lcom/mycompany/app/view/MyProgressVideo$ProgVideoListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/mycompany/app/view/MyProgressVideo$ProgVideoListener;->a(IZ)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
