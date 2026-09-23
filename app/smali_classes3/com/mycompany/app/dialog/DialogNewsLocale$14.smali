.class Lcom/mycompany/app/dialog/DialogNewsLocale$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainTransLocale$TransLocaleListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogNewsLocale;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$14;->a:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$14;->a:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->y0:Lcom/mycompany/app/main/MainTransLocale;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainTransLocale;->b()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->y0:Lcom/mycompany/app/main/MainTransLocale;

    .line 13
    .line 14
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->z0:Ljava/util/List;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogNewsLocale;->J()V

    .line 17
    .line 18
    .line 19
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->u0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->Y:Z

    .line 24
    .line 25
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->w0:Z

    .line 26
    .line 27
    iput-boolean v1, p1, Lcom/mycompany/app/main/MainLangAdapter;->l:Z

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    const/4 v1, -0x1

    .line 32
    iput v1, p1, Lcom/mycompany/app/main/MainLangAdapter;->o:I

    .line 33
    .line 34
    iput v1, p1, Lcom/mycompany/app/main/MainLangAdapter;->p:I

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogNewsLocale;->H()V

    .line 40
    .line 41
    .line 42
    return-void
.end method
