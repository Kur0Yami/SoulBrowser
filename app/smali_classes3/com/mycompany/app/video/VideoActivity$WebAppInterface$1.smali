.class Lcom/mycompany/app/video/VideoActivity$WebAppInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/video/VideoActivity$WebAppInterface;->onYouPaused(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$WebAppInterface$1;->c:Lcom/mycompany/app/video/VideoActivity$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$WebAppInterface$1;->c:Lcom/mycompany/app/video/VideoActivity$WebAppInterface;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$WebAppInterface;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->u3:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->u3:Z

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v2}, Lcom/mycompany/app/video/VideoActivity;->G1(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/mycompany/app/video/VideoActivity;->m1(Z)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->P1()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
