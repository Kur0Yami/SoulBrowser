.class Lcom/mycompany/app/lock/PatternActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/lock/PatternLock$PatternLockListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/lock/PatternActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PatternActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/PatternActivity$4;->a:Lcom/mycompany/app/lock/PatternActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternActivity$4;->a:Lcom/mycompany/app/lock/PatternActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->l1:Lcom/mycompany/app/lock/PatternLock;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v1, p1}, Lcom/mycompany/app/lock/PatternLock;->h(Lcom/mycompany/app/lock/PatternLock;Ljava/util/List;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    iget v1, v0, Lcom/mycompany/app/lock/PatternActivity;->q1:I

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v1, v2, :cond_3

    .line 23
    .line 24
    iput-boolean v2, v0, Lcom/mycompany/app/lock/PatternActivity;->u1:Z

    .line 25
    .line 26
    iget-boolean v1, v0, Lcom/mycompany/app/lock/PatternActivity;->t1:Z

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    iput-object p1, v0, Lcom/mycompany/app/lock/PatternActivity;->v1:Ljava/lang/String;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-virtual {v0, p1}, Lcom/mycompany/app/lock/PatternActivity;->y0(Z)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->v1:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    xor-int/2addr p1, v2

    .line 44
    invoke-virtual {v0, p1}, Lcom/mycompany/app/lock/PatternActivity;->y0(Z)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    iget v1, v0, Lcom/mycompany/app/lock/PatternActivity;->p1:I

    .line 49
    .line 50
    if-ne v1, v2, :cond_4

    .line 51
    .line 52
    sget-object v1, Lcom/mycompany/app/pref/PrefSecret;->A:Ljava/lang/String;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    const/4 v3, 0x2

    .line 56
    if-ne v1, v3, :cond_5

    .line 57
    .line 58
    sget-object v1, Lcom/mycompany/app/pref/PrefSecret;->C:Ljava/lang/String;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    const/4 v3, 0x3

    .line 62
    if-ne v1, v3, :cond_6

    .line 63
    .line 64
    sget-object v1, Lcom/mycompany/app/pref/PrefSecret;->E:Ljava/lang/String;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_6
    sget-object v1, Lcom/mycompany/app/pref/PrefSecret;->t:Ljava/lang/String;

    .line 68
    .line 69
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_7

    .line 74
    .line 75
    iput-boolean v2, v0, Lcom/mycompany/app/lock/PatternActivity;->w1:Z

    .line 76
    .line 77
    iget-object p1, v0, Lcom/mycompany/app/lock/PatternActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wrong_input:I

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_7
    iget p1, v0, Lcom/mycompany/app/lock/PatternActivity;->q1:I

    .line 86
    .line 87
    const/4 v1, 0x4

    .line 88
    if-ne p1, v1, :cond_8

    .line 89
    .line 90
    invoke-static {v0}, Lcom/mycompany/app/lock/PatternActivity;->u0(Lcom/mycompany/app/lock/PatternActivity;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_8
    iget-object p1, v0, Lcom/mycompany/app/lock/PatternActivity;->r1:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_9

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->o4(Landroid/content/Context;)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string v1, "EXTRA_PATH"

    .line 111
    .line 112
    iget-object v2, v0, Lcom/mycompany/app/lock/PatternActivity;->r1:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_9
    const/4 p1, -0x1

    .line 122
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternActivity$4;->a:Lcom/mycompany/app/lock/PatternActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/lock/PatternActivity;->w1:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lcom/mycompany/app/lock/PatternActivity;->w1:Z

    .line 9
    .line 10
    iget-object v0, v0, Lcom/mycompany/app/lock/PatternActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
