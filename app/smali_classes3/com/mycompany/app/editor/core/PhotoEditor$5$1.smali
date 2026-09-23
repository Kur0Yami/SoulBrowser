.class Lcom/mycompany/app/editor/core/PhotoEditor$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/editor/core/PhotoEditor$5;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/core/PhotoEditor$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEditor$5$1;->c:Lcom/mycompany/app/editor/core/PhotoEditor$5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditor$5$1;->c:Lcom/mycompany/app/editor/core/PhotoEditor$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/editor/core/PhotoEditor$5;->b:Lcom/mycompany/app/editor/core/PhotoEditor;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/editor/core/PhotoEditor;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->U(Landroid/content/Context;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iget-object v0, v0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v3, Lcom/mycompany/app/editor/core/PhotoEditor$5$1$1;

    .line 17
    .line 18
    invoke-direct {v3, p0, v1, v2}, Lcom/mycompany/app/editor/core/PhotoEditor$5$1$1;-><init>(Lcom/mycompany/app/editor/core/PhotoEditor$5$1;J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
