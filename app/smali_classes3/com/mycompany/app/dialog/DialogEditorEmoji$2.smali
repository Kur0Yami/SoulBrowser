.class Lcom/mycompany/app/dialog/DialogEditorEmoji$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditorEmoji;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditorEmoji;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji$2;->c:Lcom/mycompany/app/dialog/DialogEditorEmoji;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji$2;->c:Lcom/mycompany/app/dialog/DialogEditorEmoji;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->c0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/high16 v2, -0x5f000000

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 18
    .line 19
    new-instance v2, Lcom/mycompany/app/view/MyManagerGrid;

    .line 20
    .line 21
    iget v3, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->g0:I

    .line 22
    .line 23
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 30
    .line 31
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditorEmoji$EmojiAdapter;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditorEmoji$EmojiAdapter;-><init>(Lcom/mycompany/app/dialog/DialogEditorEmoji;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->t(Lcom/mycompany/app/view/MyRecyclerView;Lcom/mycompany/app/view/MyDialogBottom$BotListListener;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->c0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 46
    .line 47
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditorEmoji$3;

    .line 48
    .line 49
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditorEmoji$3;-><init>(Lcom/mycompany/app/dialog/DialogEditorEmoji;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method
