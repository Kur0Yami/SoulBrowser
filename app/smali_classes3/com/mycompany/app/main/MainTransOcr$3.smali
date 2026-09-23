.class Lcom/mycompany/app/main/MainTransOcr$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTransOcr;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransOcr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransOcr$3;->c:Lcom/mycompany/app/main/MainTransOcr;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransOcr$3;->c:Lcom/mycompany/app/main/MainTransOcr;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransOcr;->r:Landroid/os/Handler;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainTransOcr;->s:Z

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainTransOcr;->c()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransOcr;->c:Lcom/mycompany/app/main/MainTransOcr$TransOcrListener;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v1, v2}, Lcom/mycompany/app/main/MainTransOcr$TransOcrListener;->a(Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iput-boolean v2, v0, Lcom/mycompany/app/main/MainTransOcr;->o:Z

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainTransOcr;->c()V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransOcr;->e:Ljava/util/List;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainTransOcr;->e(Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainTransOcr;->s:Z

    .line 36
    .line 37
    return-void
.end method
