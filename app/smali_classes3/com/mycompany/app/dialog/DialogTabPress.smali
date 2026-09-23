.class public Lcom/mycompany/app/dialog/DialogTabPress;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogTabPress$TabActionHandler;
    }
.end annotation


# static fields
.field public static final synthetic n0:I


# instance fields
.field public a0:Lcom/mycompany/app/web/WebViewActivity;

.field public b0:Landroid/content/Context;

.field public final c0:I

.field public final d0:I

.field public final e0:Z

.field public final f0:Landroid/view/View;

.field public final g0:Lcom/mycompany/app/dialog/DialogTabPress$TabActionHandler;

.field public h0:Lcom/mycompany/app/view/MyDialogLink;

.field public i0:Lcom/mycompany/app/view/MyLinkView;

.field public j0:Lcom/mycompany/app/view/MyLineText;

.field public k0:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/View;IIZ[ZLcom/mycompany/app/dialog/DialogTabPress$TabActionHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    iput v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->w:I

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabPress;->a0:Lcom/mycompany/app/web/WebViewActivity;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabPress;->b0:Landroid/content/Context;

    iput p3, p0, Lcom/mycompany/app/dialog/DialogTabPress;->c0:I

    iput p4, p0, Lcom/mycompany/app/dialog/DialogTabPress;->d0:I

    iput-boolean p5, p0, Lcom/mycompany/app/dialog/DialogTabPress;->e0:Z

    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogTabPress;->f0:Landroid/view/View;

    iput-object p7, p0, Lcom/mycompany/app/dialog/DialogTabPress;->g0:Lcom/mycompany/app/dialog/DialogTabPress$TabActionHandler;

    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogTabPress;->k0:[Z

    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogTabPress$1;

    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogTabPress$1;-><init>(Lcom/mycompany/app/dialog/DialogTabPress;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static buildItems([Z)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)",
            "Ljava/util/ArrayList<",
            "Lcom/mycompany/app/view/MyLinkView$MainLinkItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Lcom/mycompany/app/pref/PrefWeb;->a0:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/mycompany/app/main/MainUtil;->g3(IZ)[I

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget v5, v3, v2

    if-ltz v5, :cond_2

    array-length v6, p0

    if-ge v5, v6, :cond_2

    aget-boolean v6, p0, v5

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    shl-int/2addr v6, v5

    and-int/2addr v6, v1

    if-eqz v6, :cond_2

    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/mycompany/app/dialog/DialogSetPopup;->s0:[I

    goto :goto_1

    :cond_0
    sget-object v6, Lcom/mycompany/app/dialog/DialogSetPopup;->r0:[I

    :goto_1
    aget v6, v6, v5

    sget-object v7, Lcom/mycompany/app/dialog/DialogSetPopup;->q0:[I

    aget v7, v7, v5

    new-instance v8, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;

    invoke-direct {v8, v5, v6, v7}, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;-><init>(III)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabPress;->g0:Lcom/mycompany/app/dialog/DialogTabPress$TabActionHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogTabPress$TabActionHandler;->onDismiss()V

    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabPress;->i0:Lcom/mycompany/app/view/MyLinkView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyLinkView;->setListener(Lcom/mycompany/app/view/MyLinkView$MainLinkListener;)V

    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyLinkView;->setLongListener(Lcom/mycompany/app/view/MyLinkView$MainLinkListener;)V

    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabPress;->i0:Lcom/mycompany/app/view/MyLinkView;

    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabPress;->h0:Lcom/mycompany/app/view/MyDialogLink;

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabPress;->j0:Lcom/mycompany/app/view/MyLineText;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabPress;->j0:Lcom/mycompany/app/view/MyLineText;

    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabPress;->a0:Lcom/mycompany/app/web/WebViewActivity;

    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabPress;->b0:Landroid/content/Context;

    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    return-void
.end method
