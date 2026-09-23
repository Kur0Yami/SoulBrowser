.class Lcom/mycompany/app/dialog/DialogDownSize$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownSize;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownSize;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownSize$6;->c:Lcom/mycompany/app/dialog/DialogDownSize;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownSize$6;->c:Lcom/mycompany/app/dialog/DialogDownSize;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->g0:Lcom/mycompany/app/view/MyCoverView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogDownSize;->m0:Z

    .line 10
    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-wide v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->k0:J

    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    cmp-long v3, v1, v3

    .line 26
    .line 27
    if-lez v3, :cond_2

    .line 28
    .line 29
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownSize;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 39
    .line 40
    sget v2, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->b0:Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-wide v2, v0, Lcom/mycompany/app/dialog/DialogDownSize;->k0:J

    .line 50
    .line 51
    invoke-interface {v1, v2, v3}, Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;->a(J)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void

    .line 55
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    .line 57
    sget v2, Lnet/kaki87/soul2/testing/R$string;->unknown:I

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownSize;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 63
    .line 64
    sget v1, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
