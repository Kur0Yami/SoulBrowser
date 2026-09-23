.class Lcom/mycompany/app/quick/QuickAdd$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickAdd;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickAdd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdd$7;->c:Lcom/mycompany/app/quick/QuickAdd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd$7;->c:Lcom/mycompany/app/quick/QuickAdd;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object p1, v0, Lcom/mycompany/app/quick/QuickAdd;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickAdd;->O2:Z

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 38
    :goto_1
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickAdd;->O2:Z

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/mycompany/app/quick/QuickAdd;->S0(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_2
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
