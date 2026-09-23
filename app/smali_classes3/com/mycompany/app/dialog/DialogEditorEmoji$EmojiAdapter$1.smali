.class Lcom/mycompany/app/dialog/DialogEditorEmoji$EmojiAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditorEmoji$EmojiAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditorEmoji$EmojiAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji$EmojiAdapter$1;->c:Lcom/mycompany/app/dialog/DialogEditorEmoji$EmojiAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji$EmojiAdapter$1;->c:Lcom/mycompany/app/dialog/DialogEditorEmoji$EmojiAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji$EmojiAdapter;->d:Lcom/mycompany/app/dialog/DialogEditorEmoji;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogEditorEmoji;->b0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    instance-of v1, p1, Lcom/mycompany/app/view/MyButtonText;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    check-cast p1, Lcom/mycompany/app/view/MyButtonText;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji$EmojiAdapter;->d:Lcom/mycompany/app/dialog/DialogEditorEmoji;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogEditorEmoji;->b0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-interface {v1, v2, p1}, Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;->a(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji$EmojiAdapter;->d:Lcom/mycompany/app/dialog/DialogEditorEmoji;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogEditorEmoji;->dismiss()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
