.class Lcom/mycompany/app/quick/QuickSubView$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSubView$16;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSubView$16;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSubView$16$1;->c:Lcom/mycompany/app/quick/QuickSubView$16;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView$16$1;->c:Lcom/mycompany/app/quick/QuickSubView$16;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSubView$16;->c:Lcom/mycompany/app/quick/QuickSubView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->f:Lcom/mycompany/app/quick/QuickSubView$QuickSubListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v0, Lcom/mycompany/app/quick/QuickSubView;->G:Z

    .line 11
    .line 12
    invoke-interface {v1}, Lcom/mycompany/app/quick/QuickSubView$QuickSubListener;->q()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
