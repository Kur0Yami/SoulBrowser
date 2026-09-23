.class Lcom/mycompany/app/dialog/DialogEditorText$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditorText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditorText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorText$8;->c:Lcom/mycompany/app/dialog/DialogEditorText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorText$8;->c:Lcom/mycompany/app/dialog/DialogEditorText;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditorText;->c0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditorText;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditorText;->f0:Lcom/mycompany/app/view/MyEditPure;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogEditorText;->b0:Landroid/content/Context;

    .line 28
    .line 29
    sget v0, Lnet/kaki87/soul2/testing/R$string;->empty:I

    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogEditorText;->b0:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogEditorText;->f0:Lcom/mycompany/app/view/MyEditPure;

    .line 38
    .line 39
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->X4(Landroid/content/Context;Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    sget v1, Lcom/mycompany/app/pref/PrefRead;->U:I

    .line 43
    .line 44
    iget v2, p1, Lcom/mycompany/app/dialog/DialogEditorText;->k0:I

    .line 45
    .line 46
    if-ne v1, v2, :cond_2

    .line 47
    .line 48
    sget v1, Lcom/mycompany/app/pref/PrefRead;->V:F

    .line 49
    .line 50
    iget v2, p1, Lcom/mycompany/app/dialog/DialogEditorText;->l0:F

    .line 51
    .line 52
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    :cond_2
    iget v1, p1, Lcom/mycompany/app/dialog/DialogEditorText;->k0:I

    .line 59
    .line 60
    sput v1, Lcom/mycompany/app/pref/PrefRead;->U:I

    .line 61
    .line 62
    iget v1, p1, Lcom/mycompany/app/dialog/DialogEditorText;->l0:F

    .line 63
    .line 64
    sput v1, Lcom/mycompany/app/pref/PrefRead;->V:F

    .line 65
    .line 66
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogEditorText;->b0:Landroid/content/Context;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-static {v1, v2}, Lcom/mycompany/app/pref/PrefRead;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefRead;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, "mTextColor"

    .line 74
    .line 75
    sget v3, Lcom/mycompany/app/pref/PrefRead;->U:I

    .line 76
    .line 77
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v2, "mTextPos"

    .line 81
    .line 82
    sget v3, Lcom/mycompany/app/pref/PrefRead;->V:F

    .line 83
    .line 84
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogEditorText;->c0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 91
    .line 92
    sget v2, Lcom/mycompany/app/pref/PrefRead;->U:I

    .line 93
    .line 94
    invoke-interface {v1, v2, v0}, Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;->a(ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogEditorText;->dismiss()V

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_0
    return-void
.end method
