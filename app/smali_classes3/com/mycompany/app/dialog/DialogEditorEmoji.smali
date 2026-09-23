.class public Lcom/mycompany/app/dialog/DialogEditorEmoji;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogEditorEmoji$EmojiAdapter;,
        Lcom/mycompany/app/dialog/DialogEditorEmoji$ViewPagerHolder;
    }
.end annotation


# static fields
.field public static final synthetic i0:I


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

.field public c0:Lcom/mycompany/app/view/MyDialogRelative;

.field public d0:Lcom/mycompany/app/view/MyRecyclerView;

.field public e0:Lcom/mycompany/app/view/MyLineText;

.field public final f0:I

.field public g0:I

.field public h0:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 5
    .line 6
    iput p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->w:I

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->C:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->a0:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->b0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 18
    .line 19
    iput p2, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->f0:I

    .line 20
    .line 21
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogEditorEmoji$1;

    .line 27
    .line 28
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogEditorEmoji$1;-><init>(Lcom/mycompany/app/dialog/DialogEditorEmoji;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->c0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogRelative;->c()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->c0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 36
    .line 37
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->a0:Landroid/content/Context;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->b0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 40
    .line 41
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 42
    .line 43
    .line 44
    return-void
.end method
