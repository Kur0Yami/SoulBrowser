.class Lcom/mycompany/app/quick/TabSubView$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebTabAdapter$WebTabListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/quick/TabSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/TabSubView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/TabSubView$12;->a:Lcom/mycompany/app/quick/TabSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/quick/TabSubView$12;->a:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/quick/TabSubView;->P:Z

    .line 4
    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 8
    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v1, p1, Lcom/mycompany/app/quick/TabSubView;->g:Lcom/mycompany/app/quick/TabSubView$TabSubListener;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lcom/mycompany/app/web/WebTabAdapter;->f0(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/mycompany/app/quick/TabSubView;->l()V

    .line 24
    .line 25
    .line 26
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->s:Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->E()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v1, p1, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebTabAdapter;->J()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->t:Lcom/mycompany/app/view/MyButtonCheck;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebTabAdapter;->N()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p2, p1, v0}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {v0, p2}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    if-nez p2, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    iget-object p1, p1, Lcom/mycompany/app/quick/TabSubView;->g:Lcom/mycompany/app/quick/TabSubView$TabSubListener;

    .line 71
    .line 72
    iget p2, p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 73
    .line 74
    invoke-interface {p1, p2}, Lcom/mycompany/app/quick/TabSubView$TabSubListener;->d(I)V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_0
    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/TabSubView$12;->a:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/mycompany/app/quick/TabSubView;->e(Lcom/mycompany/app/quick/TabSubView;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/TabSubView$12;->a:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/quick/TabSubView;->P:Z

    .line 4
    .line 5
    if-nez v1, :cond_done

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :cond_done

    .line 12
    :cond_0
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 13
    .line 14
    if-nez v2, :cond_range

    invoke-static {p1}, Lcom/mycompany/app/web/TabListLongPressGate;->anchorFor(Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p2}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    move-result-object v1

    if-nez v1, :cond_helper_check

    goto :cond_arm

    :cond_helper_check
    iget v1, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    if-nez v1, :cond_arm

    iget-object v3, v0, Lcom/mycompany/app/quick/TabSubView;->H:Landroidx/recyclerview/widget/ItemTouchHelper;

    :cond_arm
    invoke-static {v0, v2, p1, v3, p2}, Lcom/mycompany/app/web/TabListLongPressGate;->armSub(Lcom/mycompany/app/quick/TabSubView;Landroid/view/View;Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;Landroidx/recyclerview/widget/ItemTouchHelper;I)V

    return-void

    :cond_range
    invoke-virtual {v1, p2}, Lcom/mycompany/app/web/WebTabAdapter;->selectRangeTo(I)Z

    invoke-virtual {v0}, Lcom/mycompany/app/quick/TabSubView;->l()V

    iget-object p1, v0, Lcom/mycompany/app/quick/TabSubView;->s:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez p1, :cond_range_text

    return-void

    :cond_range_text
    iget-object p2, v0, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    invoke-virtual {p2}, Lcom/mycompany/app/web/WebTabAdapter;->E()I

    move-result p2

    iget-object v1, v0, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    invoke-virtual {v1}, Lcom/mycompany/app/web/WebTabAdapter;->J()I

    move-result v1

    invoke-static {p2, v1}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/mycompany/app/quick/TabSubView;->t:Lcom/mycompany/app/view/MyButtonCheck;

    iget-object p2, v0, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    invoke-virtual {p2}, Lcom/mycompany/app/web/WebTabAdapter;->N()Z

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    :cond_done
    return-void
.end method
