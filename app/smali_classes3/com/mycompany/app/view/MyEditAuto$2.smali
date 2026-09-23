.class Lcom/mycompany/app/view/MyEditAuto$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public c:Z

.field public final synthetic f:Lcom/mycompany/app/view/MyEditAuto;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyEditAuto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyEditAuto$2;->f:Lcom/mycompany/app/view/MyEditAuto;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto$2;->f:Lcom/mycompany/app/view/MyEditAuto;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyEditAuto;->l:Lcom/mycompany/app/view/MyEditAuto$EditAutoListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move-object v2, v1

    .line 17
    :goto_0
    iget-object v3, v0, Lcom/mycompany/app/view/MyEditAuto;->l:Lcom/mycompany/app/view/MyEditAuto$EditAutoListener;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Lcom/mycompany/app/view/MyEditAuto$EditAutoListener;->a(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 27
    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyEditAuto$2;->c:Z

    .line 31
    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEditAuto;->f()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_3

    .line 39
    .line 40
    iput-object v1, v0, Lcom/mycompany/app/view/MyEditAuto;->D:Ljava/lang/String;

    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 44
    .line 45
    if-eqz v1, :cond_5

    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/view/MyEditAuto;->D:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    iput-object v2, v0, Lcom/mycompany/app/view/MyEditAuto;->D:Ljava/lang/String;

    .line 57
    .line 58
    :cond_5
    iget-object v0, v0, Lcom/mycompany/app/view/MyEditAuto;->C:Landroid/widget/Filter;

    .line 59
    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    :cond_6
    :goto_1
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/view/MyEditAuto$2;->f:Lcom/mycompany/app/view/MyEditAuto;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyEditAuto;->f()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyEditAuto$2;->c:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
