.class Lcom/mycompany/app/dialog/DialogUrlLink$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogUrlLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$40;->a:Lcom/mycompany/app/dialog/DialogUrlLink;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_empty

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_empty

    const-string v0, "undefined"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_parse

    :cond_empty
    const-string p1, ""

    goto :cond_store

    :cond_parse
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->X6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_empty

    :cond_store
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink$40;->a:Lcom/mycompany/app/dialog/DialogUrlLink;

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    if-eqz v1, :cond_done

    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->d1:Ljava/lang/String;

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    if-eqz v1, :cond_done

    # Only update the header while the image tab thumbnail is visible.
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_done

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_done

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_use_caption

    # No title/alt: fall back to the image URL.
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->g0:Ljava/lang/String;

    :cond_use_caption
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_done
    return-void
.end method
