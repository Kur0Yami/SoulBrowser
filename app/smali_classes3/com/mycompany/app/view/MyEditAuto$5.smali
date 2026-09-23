.class Lcom/mycompany/app/view/MyEditAuto$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyEditAuto;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyEditAuto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyEditAuto$5;->c:Lcom/mycompany/app/view/MyEditAuto;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto$5;->c:Lcom/mycompany/app/view/MyEditAuto;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyEditAuto;->L:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, v0, Lcom/mycompany/app/view/MyEditAuto;->M:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lcom/mycompany/app/view/MyEditAuto;->L:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v4, v0, Lcom/mycompany/app/view/MyEditAuto;->F:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v3, v0, Lcom/mycompany/app/view/MyEditAuto;->F:Ljava/lang/String;

    .line 13
    .line 14
    iget-boolean v3, v0, Lcom/mycompany/app/view/MyEditAuto;->k:Z

    .line 15
    .line 16
    if-eqz v3, :cond_3

    .line 17
    .line 18
    iget v3, v0, Lcom/mycompany/app/view/MyEditAuto;->G:I

    .line 19
    .line 20
    if-ne v3, v2, :cond_3

    .line 21
    .line 22
    invoke-static {v4, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-gez v2, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    :cond_3
    :goto_0
    return-void
.end method
