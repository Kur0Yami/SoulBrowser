.class Lcom/mycompany/app/main/MainTxtView$42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTxtView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTxtView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView$42;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    sget p1, Lcom/mycompany/app/main/MainTxtView;->X2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView$42;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/main/MainTxtView;->I2:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetTts;->dismiss()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Lcom/mycompany/app/main/MainTxtView;->I2:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/mycompany/app/pref/PrefTts;->k:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/mycompany/app/main/MainTxtView;->q2:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget v0, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 26
    .line 27
    iget v1, p1, Lcom/mycompany/app/main/MainTxtView;->o2:F

    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    sget v0, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 36
    .line 37
    iget v1, p1, Lcom/mycompany/app/main/MainTxtView;->p2:F

    .line 38
    .line 39
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    :cond_1
    invoke-static {p1}, Lcom/mycompany/app/main/MainTxtView;->D0(Lcom/mycompany/app/main/MainTxtView;)V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lcom/mycompany/app/pref/PrefTts;->k:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v0, p1, Lcom/mycompany/app/main/MainTxtView;->q2:Ljava/lang/String;

    .line 51
    .line 52
    :cond_2
    iget v0, p1, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    if-ne v0, v1, :cond_4

    .line 56
    .line 57
    iget-object p1, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 58
    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    new-instance v0, Lcom/mycompany/app/main/MainTxtView$42$1;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainTxtView$42$1;-><init>(Lcom/mycompany/app/main/MainTxtView$42;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_0
    return-void
.end method
