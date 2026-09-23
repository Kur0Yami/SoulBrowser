.class Lcom/mycompany/app/view/MyClipView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyClipView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyClipView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyClipView$2;->c:Lcom/mycompany/app/view/MyClipView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/view/MyClipView$2;->c:Lcom/mycompany/app/view/MyClipView;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/view/MyClipView;->r:Z

    .line 4
    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/view/MyClipView;->q:Z

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    xor-int/2addr v0, v1

    .line 16
    iput-boolean v0, p1, Lcom/mycompany/app/view/MyClipView;->q:Z

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyClipView;->g()V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p1, Lcom/mycompany/app/view/MyClipView;->q:Z

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p1, Lcom/mycompany/app/view/MyClipView;->s:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-boolean v0, p1, Lcom/mycompany/app/view/MyClipView;->r:Z

    .line 34
    .line 35
    if-nez v0, :cond_4

    .line 36
    .line 37
    iget-boolean v0, p1, Lcom/mycompany/app/view/MyClipView;->q:Z

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    iget-object v0, p1, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iput-boolean v1, p1, Lcom/mycompany/app/view/MyClipView;->r:Z

    .line 47
    .line 48
    new-instance v0, Lcom/mycompany/app/view/MyClipView$5;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Lcom/mycompany/app/view/MyClipView$5;-><init>(Lcom/mycompany/app/view/MyClipView;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyClipView;->e(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/mycompany/app/view/MyClipView;->t:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    iget-object p1, p1, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    sget v0, Lnet/kaki87/soul2/testing/R$string;->copied_text:I

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_0
    return-void
.end method
