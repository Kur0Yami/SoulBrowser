.class Lcom/mycompany/app/quick/TabSubView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/TabSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/TabSubView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/TabSubView$4;->c:Lcom/mycompany/app/quick/TabSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/quick/TabSubView$4;->c:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->N()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    xor-int/2addr v0, v1

    .line 19
    iget-object v2, p1, Lcom/mycompany/app/quick/TabSubView;->t:Lcom/mycompany/app/view/MyButtonCheck;

    .line 20
    .line 21
    invoke-virtual {v2, v0, v1}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p1, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 25
    .line 26
    invoke-virtual {v2, v0, v1}, Lcom/mycompany/app/web/WebTabAdapter;->X(ZZ)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p1, Lcom/mycompany/app/quick/TabSubView;->s:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    iget-object v1, p1, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebTabAdapter;->E()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget-object v2, p1, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebTabAdapter;->J()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/mycompany/app/quick/TabSubView;->l()V

    .line 51
    .line 52
    .line 53
    return-void
.end method
