.class Lcom/mycompany/app/wview/WebMoveText$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/wview/WebMoveText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/wview/WebMoveText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/wview/WebMoveText$13;->c:Lcom/mycompany/app/wview/WebMoveText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebMoveText$13;->c:Lcom/mycompany/app/wview/WebMoveText;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/wview/WebMoveText;->C:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
