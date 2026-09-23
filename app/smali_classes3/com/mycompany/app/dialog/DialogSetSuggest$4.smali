.class Lcom/mycompany/app/dialog/DialogSetSuggest$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetSuggest;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetSuggest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetSuggest$4;->c:Lcom/mycompany/app/dialog/DialogSetSuggest;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSuggest$4;->c:Lcom/mycompany/app/dialog/DialogSetSuggest;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetSuggest;->h0:I

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 10
    .line 11
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 12
    .line 13
    if-eq p1, v2, :cond_1

    .line 14
    .line 15
    :cond_0
    sput v1, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 16
    .line 17
    iget p1, v0, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 18
    .line 19
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 20
    .line 21
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetSuggest;->b0:Landroid/content/Context;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {p1, v1}, Lcom/mycompany/app/pref/PrefWeb;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefWeb;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v1, "mSugEng"

    .line 29
    .line 30
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 31
    .line 32
    invoke-virtual {p1, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "mSugType3"

    .line 36
    .line 37
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 38
    .line 39
    invoke-virtual {p1, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetSuggest;->dismiss()V

    .line 46
    .line 47
    .line 48
    return-void
.end method
