.class Lcom/mycompany/app/wview/WebMoveText$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/wview/WebMoveText$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/wview/WebMoveText$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/wview/WebMoveText$1$1;->c:Lcom/mycompany/app/wview/WebMoveText$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebMoveText$1$1;->c:Lcom/mycompany/app/wview/WebMoveText$1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/wview/WebMoveText$1;->c:Lcom/mycompany/app/wview/WebMoveText;

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebMoveText;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lcom/mycompany/app/wview/WebMoveText$1;->c:Lcom/mycompany/app/wview/WebMoveText;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, v0, Lcom/mycompany/app/wview/WebMoveText;->n:Z

    .line 14
    .line 15
    return-void
.end method
