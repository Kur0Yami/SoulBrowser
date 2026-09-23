.class Lcom/mycompany/app/dialog/DialogNewsLocale$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogNewsLocale$13;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsLocale$13;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$13$1;->c:Lcom/mycompany/app/dialog/DialogNewsLocale$13;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$13$1;->c:Lcom/mycompany/app/dialog/DialogNewsLocale$13;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$13;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogNewsLocale;->J()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->u0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->Y:Z

    .line 18
    .line 19
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->w0:Z

    .line 20
    .line 21
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainLangAdapter;->l:Z

    .line 22
    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    const/4 v2, -0x1

    .line 26
    iput v2, v1, Lcom/mycompany/app/main/MainLangAdapter;->o:I

    .line 27
    .line 28
    iput v2, v1, Lcom/mycompany/app/main/MainLangAdapter;->p:I

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogNewsLocale;->H()V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->D0:Z

    .line 38
    .line 39
    return-void
.end method
