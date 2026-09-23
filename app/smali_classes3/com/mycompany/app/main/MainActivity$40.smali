.class Lcom/mycompany/app/main/MainActivity$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity$40;->c:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefMain;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/mycompany/app/pref/PrefMain;->u:I

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    sget-boolean v0, Lcom/mycompany/app/pref/PrefMain;->x:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget v0, Lcom/mycompany/app/pref/PrefMain;->w:I

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->t:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->u:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity$40;->c:Lcom/mycompany/app/main/MainActivity;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    sget v1, Lcom/mycompany/app/pref/PrefMain;->u:I

    .line 37
    .line 38
    sget v2, Lcom/mycompany/app/pref/PrefMain;->w:I

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-static {v0, v3, v4}, Lcom/mycompany/app/main/MainUtil;->h(Landroid/content/Context;Landroid/view/Window;Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    sget v3, Lcom/mycompany/app/pref/PrefMain;->u:I

    .line 52
    .line 53
    if-ne v1, v3, :cond_3

    .line 54
    .line 55
    sget v1, Lcom/mycompany/app/pref/PrefMain;->w:I

    .line 56
    .line 57
    if-ne v2, v1, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->D0:Lcom/mycompany/app/main/MainActivity$MainHeightListener;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-interface {v0}, Lcom/mycompany/app/main/MainActivity$MainHeightListener;->a()V

    .line 65
    .line 66
    .line 67
    :cond_4
    :goto_0
    return-void
.end method
