.class Lcom/mycompany/app/video/VideoActivity$37$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity$37$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity$37$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$37$1$1$1;->c:Lcom/mycompany/app/video/VideoActivity$37$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$37$1$1$1;->c:Lcom/mycompany/app/video/VideoActivity$37$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$37$1$1;->c:Lcom/mycompany/app/video/VideoActivity$37$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity$37$1;->c:Lcom/mycompany/app/video/VideoActivity$37;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/video/VideoActivity$37;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 8
    .line 9
    iget-boolean v2, v1, Lcom/mycompany/app/video/VideoActivity;->u3:Z

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput-boolean v4, v1, Lcom/mycompany/app/video/VideoActivity;->u3:Z

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Lcom/mycompany/app/video/VideoActivity;->G1(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v4}, Lcom/mycompany/app/video/VideoActivity;->m1(Z)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity$37$1;->c:Lcom/mycompany/app/video/VideoActivity$37;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/mycompany/app/video/VideoActivity$37;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 27
    .line 28
    iget v2, v1, Lcom/mycompany/app/video/VideoActivity;->v3:I

    .line 29
    .line 30
    if-ne v2, v3, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    iput v2, v1, Lcom/mycompany/app/video/VideoActivity;->v3:I

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/mycompany/app/video/VideoActivity;->P1()V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$37$1;->c:Lcom/mycompany/app/video/VideoActivity$37;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$37;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 41
    .line 42
    iget-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->w3:Z

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    iput-boolean v4, v0, Lcom/mycompany/app/video/VideoActivity;->w3:Z

    .line 48
    .line 49
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$37$1$1$1$1;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$37$1$1$1$1;-><init>(Lcom/mycompany/app/video/VideoActivity$37$1$1$1;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
