.class Lcom/mycompany/app/dialog/DialogEditorPen$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditorPen;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditorPen;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorPen$11;->c:Lcom/mycompany/app/dialog/DialogEditorPen;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    sget p1, Lcom/mycompany/app/pref/PrefRead;->P:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen$11;->c:Lcom/mycompany/app/dialog/DialogEditorPen;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->q0:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    sget p1, Lcom/mycompany/app/pref/PrefRead;->Q:I

    .line 11
    .line 12
    iget v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->r0:I

    .line 13
    .line 14
    if-ne p1, v1, :cond_0

    .line 15
    .line 16
    sget p1, Lcom/mycompany/app/pref/PrefRead;->R:I

    .line 17
    .line 18
    iget v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->s0:I

    .line 19
    .line 20
    if-ne p1, v1, :cond_0

    .line 21
    .line 22
    sget p1, Lcom/mycompany/app/pref/PrefRead;->S:F

    .line 23
    .line 24
    iget v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->t0:F

    .line 25
    .line 26
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    :cond_0
    iget p1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->q0:I

    .line 33
    .line 34
    sput p1, Lcom/mycompany/app/pref/PrefRead;->P:I

    .line 35
    .line 36
    iget p1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->r0:I

    .line 37
    .line 38
    sput p1, Lcom/mycompany/app/pref/PrefRead;->Q:I

    .line 39
    .line 40
    iget p1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->s0:I

    .line 41
    .line 42
    sput p1, Lcom/mycompany/app/pref/PrefRead;->R:I

    .line 43
    .line 44
    iget p1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->t0:F

    .line 45
    .line 46
    sput p1, Lcom/mycompany/app/pref/PrefRead;->S:F

    .line 47
    .line 48
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->a0:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {p1, v2}, Lcom/mycompany/app/pref/PrefRead;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefRead;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v1, "mPenSize"

    .line 55
    .line 56
    sget v3, Lcom/mycompany/app/pref/PrefRead;->P:I

    .line 57
    .line 58
    invoke-virtual {p1, v3, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "mPenAlpha"

    .line 62
    .line 63
    sget v3, Lcom/mycompany/app/pref/PrefRead;->Q:I

    .line 64
    .line 65
    invoke-virtual {p1, v3, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v1, "mPenColor"

    .line 69
    .line 70
    sget v3, Lcom/mycompany/app/pref/PrefRead;->R:I

    .line 71
    .line 72
    invoke-virtual {p1, v3, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v1, "mPenPos"

    .line 76
    .line 77
    sget v3, Lcom/mycompany/app/pref/PrefRead;->S:F

    .line 78
    .line 79
    invoke-virtual {p1, v1, v3}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->b0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 86
    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-interface {p1, v2, v1}, Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;->a(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditorPen;->dismiss()V

    .line 94
    .line 95
    .line 96
    return-void
.end method
