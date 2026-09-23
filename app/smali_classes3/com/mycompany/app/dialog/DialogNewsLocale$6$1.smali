.class Lcom/mycompany/app/dialog/DialogNewsLocale$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogNewsLocale$6;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsLocale$6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$6$1;->c:Lcom/mycompany/app/dialog/DialogNewsLocale$6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$6$1;->c:Lcom/mycompany/app/dialog/DialogNewsLocale$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$6;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 4
    .line 5
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->X:Z

    .line 6
    .line 7
    const/16 v2, 0x10

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sput-boolean v3, Lcom/mycompany/app/pref/PrefZtwo;->X:Z

    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 15
    .line 16
    const-string v4, "mLocNoti"

    .line 17
    .line 18
    invoke-static {v2, v1, v4, v3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    sget v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->S0:I

    .line 29
    .line 30
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->Y:Z

    .line 31
    .line 32
    xor-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    sput-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->Y:Z

    .line 35
    .line 36
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 37
    .line 38
    const-string v5, "mLocTrans"

    .line 39
    .line 40
    invoke-static {v2, v4, v5, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->Y:Z

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogNewsLocale;->J()V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->u0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->Y:Z

    .line 55
    .line 56
    iget-boolean v4, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->w0:Z

    .line 57
    .line 58
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainLangAdapter;->l:Z

    .line 59
    .line 60
    if-nez v4, :cond_1

    .line 61
    .line 62
    const/4 v2, -0x1

    .line 63
    iput v2, v1, Lcom/mycompany/app/main/MainLangAdapter;->o:I

    .line 64
    .line 65
    iput v2, v1, Lcom/mycompany/app/main/MainLangAdapter;->p:I

    .line 66
    .line 67
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 68
    .line 69
    .line 70
    :cond_1
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->D0:Z

    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogNewsLocale$13;

    .line 74
    .line 75
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogNewsLocale$13;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
