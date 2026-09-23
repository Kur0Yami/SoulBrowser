.class Lcom/mycompany/app/dialog/DialogEditorEmoji$EmojiAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogEditorEmoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmojiAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/dialog/DialogEditorEmoji$ViewPagerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/mycompany/app/dialog/DialogEditorEmoji;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditorEmoji;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji$EmojiAdapter;->d:Lcom/mycompany/app/dialog/DialogEditorEmoji;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    const/16 v0, 0x190

    return v0
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/mycompany/app/dialog/DialogEditorEmoji$ViewPagerHolder;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-ltz p2, :cond_2

    .line 9
    .line 10
    const/16 v0, 0x190

    .line 11
    .line 12
    if-lt p2, v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditorEmoji$ViewPagerHolder;->u:Lcom/mycompany/app/view/MyButtonText;

    .line 16
    .line 17
    sget-object v1, Lcom/mycompany/app/editor/EditorEmoji;->a:[Ljava/lang/String;

    .line 18
    .line 19
    aget-object p2, v1, p2

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogEditorEmoji$ViewPagerHolder;->u:Lcom/mycompany/app/view/MyButtonText;

    .line 25
    .line 26
    new-instance p2, Lcom/mycompany/app/dialog/DialogEditorEmoji$EmojiAdapter$1;

    .line 27
    .line 28
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogEditorEmoji$EmojiAdapter$1;-><init>(Lcom/mycompany/app/dialog/DialogEditorEmoji$EmojiAdapter;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    new-instance p2, Lcom/mycompany/app/view/MyButtonText;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const/16 p1, 0x11

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    const/high16 v0, 0x42100000    # 36.0f

    .line 21
    .line 22
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 23
    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    .line 28
    .line 29
    const p1, -0x5e8a8a8b

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyButtonText;->setBgPreColor(I)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji$EmojiAdapter;->d:Lcom/mycompany/app/dialog/DialogEditorEmoji;

    .line 38
    .line 39
    iget v0, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->h0:I

    .line 40
    .line 41
    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lcom/mycompany/app/dialog/DialogEditorEmoji$ViewPagerHolder;

    .line 48
    .line 49
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogEditorEmoji$ViewPagerHolder;->u:Lcom/mycompany/app/view/MyButtonText;

    .line 53
    .line 54
    return-object p1
.end method
