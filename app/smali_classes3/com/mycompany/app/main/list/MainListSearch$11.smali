.class Lcom/mycompany/app/main/list/MainListSearch$11;
.super Lcom/mycompany/app/main/MainListListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/list/MainListSearch;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListSearch$11;->a:Lcom/mycompany/app/main/list/MainListSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final e(IIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch$11;->a:Lcom/mycompany/app/main/list/MainListSearch;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListSearch;->I1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-virtual {p1, p3, p2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final f(ILcom/mycompany/app/main/MainItem$ChildItem;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListSearch$11;->a:Lcom/mycompany/app/main/list/MainListSearch;

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    invoke-static {p1, p3, p2, p3}, Lcom/mycompany/app/main/list/MainListSearch;->D0(Lcom/mycompany/app/main/list/MainListSearch;ILcom/mycompany/app/main/MainItem$ChildItem;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final i(ZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch$11;->a:Lcom/mycompany/app/main/list/MainListSearch;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v1, 0x8

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iget-object p1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 17
    .line 18
    iget-object p2, v0, Lcom/mycompany/app/main/list/MainListSearch;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 19
    .line 20
    sget v1, Lnet/kaki87/soul2/testing/R$anim;->ic_rotate_out:I

    .line 21
    .line 22
    invoke-static {p1, p2, v1, v2}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 23
    .line 24
    .line 25
    iget-object p1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 26
    .line 27
    iget-object p2, v0, Lcom/mycompany/app/main/list/MainListSearch;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    sget v1, Lnet/kaki87/soul2/testing/R$anim;->ic_scale_in:I

    .line 30
    .line 31
    invoke-static {p1, p2, v1, v3}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 32
    .line 33
    .line 34
    iget-object p1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 35
    .line 36
    iget-object p2, v0, Lcom/mycompany/app/main/list/MainListSearch;->I1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 37
    .line 38
    sget v0, Lnet/kaki87/soul2/testing/R$anim;->ic_rotate_in:I

    .line 39
    .line 40
    invoke-static {p1, p2, v0, v3}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListSearch;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListSearch;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListSearch;->I1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 55
    .line 56
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    if-eqz p2, :cond_3

    .line 61
    .line 62
    iget-object p1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 63
    .line 64
    iget-object p2, v0, Lcom/mycompany/app/main/list/MainListSearch;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 65
    .line 66
    sget v1, Lnet/kaki87/soul2/testing/R$anim;->ic_rotate_in:I

    .line 67
    .line 68
    invoke-static {p1, p2, v1, v3}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 69
    .line 70
    .line 71
    iget-object p1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 72
    .line 73
    iget-object p2, v0, Lcom/mycompany/app/main/list/MainListSearch;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    sget v1, Lnet/kaki87/soul2/testing/R$anim;->ic_scale_out:I

    .line 76
    .line 77
    invoke-static {p1, p2, v1, v2}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 78
    .line 79
    .line 80
    iget-object p1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 81
    .line 82
    iget-object p2, v0, Lcom/mycompany/app/main/list/MainListSearch;->I1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 83
    .line 84
    sget v0, Lnet/kaki87/soul2/testing/R$anim;->ic_rotate_out:I

    .line 85
    .line 86
    invoke-static {p1, p2, v0, v2}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListSearch;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 91
    .line 92
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListSearch;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListSearch;->I1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 101
    .line 102
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch$11;->a:Lcom/mycompany/app/main/list/MainListSearch;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->R1:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/main/list/MainListSearch;->E0()V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListSearch;->R1:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 19
    .line 20
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainSelectAdapter;->y(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
