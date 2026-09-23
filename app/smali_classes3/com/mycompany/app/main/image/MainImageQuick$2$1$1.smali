.class Lcom/mycompany/app/main/image/MainImageQuick$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageQuick$2$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageQuick$2$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$2$1$1;->c:Lcom/mycompany/app/main/image/MainImageQuick$2$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick$2$1$1;->c:Lcom/mycompany/app/main/image/MainImageQuick$2$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageQuick$2$1;->c:Lcom/mycompany/app/main/image/MainImageQuick$2;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageQuick$2;->a:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->H1:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-boolean v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->G1:Z

    .line 17
    .line 18
    iget-boolean v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 19
    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-boolean v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->H1:Z

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImageQuick;->I0()V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method
