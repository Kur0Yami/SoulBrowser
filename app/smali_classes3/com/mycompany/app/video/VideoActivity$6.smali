.class Lcom/mycompany/app/video/VideoActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$6;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$6;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->i2:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/mycompany/app/video/VideoActivity;->S0(Z)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->j2:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->i2:Z

    .line 21
    .line 22
    iput-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->j2:Z

    .line 23
    .line 24
    return-void
.end method
