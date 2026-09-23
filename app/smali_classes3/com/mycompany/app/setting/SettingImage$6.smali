.class Lcom/mycompany/app/setting/SettingImage$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/setting/SettingImage$6;->a:Lcom/mycompany/app/setting/SettingImage;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImage$6;->a:Lcom/mycompany/app/setting/SettingImage;

    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImage;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    iput-object v2, v0, Lcom/mycompany/app/setting/SettingImage;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    const/4 p1, 0x2

    rem-int/2addr p2, p1

    if-nez p2, :pdf_timeout_default

    const/4 p1, 0x0

    goto :pdf_timeout_apply

    :pdf_timeout_default
    const/4 p1, 0x3

    :pdf_timeout_apply
    sget p2, Lcom/mycompany/app/pref/PrefImage;->J:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    return v0

    :cond_0
    sput p1, Lcom/mycompany/app/pref/PrefImage;->J:I

    iget-object p2, p0, Lcom/mycompany/app/setting/SettingImage$6;->a:Lcom/mycompany/app/setting/SettingImage;

    iget-object v1, p2, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    const/4 v2, 0x3

    const-string v3, "mPdfControlTimeout"

    invoke-static {v1, v2, p1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    iget-object v1, p2, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    if-eqz v1, :cond_1

    if-nez p1, :pdf_timeout_label_default

    sget p1, Lnet/kaki87/soul2/testing/R$string;->pdf_controls_timeout_disabled:I

    goto :pdf_timeout_update

    :pdf_timeout_label_default
    sget p1, Lnet/kaki87/soul2/testing/R$string;->pdf_controls_timeout_default:I

    :pdf_timeout_update
    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    :cond_1
    return v0
.end method
