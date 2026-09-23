.class Lcom/mycompany/app/wview/WebDownView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/wview/WebDownView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/wview/WebDownView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/wview/WebDownView$11;->c:Lcom/mycompany/app/wview/WebDownView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView$11;->c:Lcom/mycompany/app/wview/WebDownView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/wview/WebDownView;->b0:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/mycompany/app/wview/WebDownView;->y:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iput-boolean v2, v0, Lcom/mycompany/app/wview/WebDownView;->y:Z

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/wview/WebDownView;->t()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :cond_1
    iput-boolean v2, v0, Lcom/mycompany/app/wview/WebDownView;->a0:Z

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/wview/WebDownView;->k()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
