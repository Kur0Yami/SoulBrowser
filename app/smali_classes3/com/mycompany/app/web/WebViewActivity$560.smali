.class Lcom/mycompany/app/web/WebViewActivity$560;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$560;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->t:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$560;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->w9:Z

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->u:Z

    .line 10
    .line 11
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->x9:Z

    .line 12
    .line 13
    if-eq v0, v2, :cond_3

    .line 14
    .line 15
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->d:Z

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->t:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->u:Z

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Dg:Z

    .line 29
    .line 30
    :cond_2
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->t:Z

    .line 31
    .line 32
    sget-boolean v2, Lcom/mycompany/app/pref/PrefWeb;->u:Z

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v0, v2, v3}, Lcom/mycompany/app/web/WebViewActivity;->U8(ZZZ)V

    .line 36
    .line 37
    .line 38
    :cond_3
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->v:Z

    .line 39
    .line 40
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->m4:Z

    .line 41
    .line 42
    if-ne v0, v2, :cond_5

    .line 43
    .line 44
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->w:Z

    .line 45
    .line 46
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->n4:Z

    .line 47
    .line 48
    if-eq v0, v2, :cond_4

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    return-void

    .line 52
    :cond_5
    :goto_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->t3()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->u3()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->m2(II)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
