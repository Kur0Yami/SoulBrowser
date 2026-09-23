.class Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;
.implements Lcom/google/android/material/timepicker/TimePickerPresenter;


# instance fields
.field public final c:Landroid/widget/LinearLayout;

.field public final f:Lcom/google/android/material/timepicker/TimeModel;

.field public final g:Landroid/text/TextWatcher;

.field public final h:Landroid/text/TextWatcher;

.field public final i:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field public final j:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field public final k:Landroid/widget/EditText;

.field public final l:Landroid/widget/EditText;

.field public final m:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/TimeModel;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$1;-><init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->g:Landroid/text/TextWatcher;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$2;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$2;-><init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->h:Landroid/text/TextWatcher;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->c:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->f:Lcom/google/android/material/timepicker/TimeModel;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget v3, Lcom/google/android/material/R$id;->material_minute_text_input:I

    .line 27
    .line 28
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 33
    .line 34
    iput-object v3, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->i:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 35
    .line 36
    sget v4, Lcom/google/android/material/R$id;->material_hour_text_input:I

    .line 37
    .line 38
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 43
    .line 44
    iput-object v4, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->j:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 45
    .line 46
    sget v5, Lcom/google/android/material/R$id;->material_label:I

    .line 47
    .line 48
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    iget-object v6, v3, Lcom/google/android/material/timepicker/ChipTextInputComboView;->f:Lcom/google/android/material/textfield/TextInputLayout;

    .line 53
    .line 54
    check-cast v5, Landroid/widget/TextView;

    .line 55
    .line 56
    sget v7, Lcom/google/android/material/R$id;->material_label:I

    .line 57
    .line 58
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    iget-object v8, v4, Lcom/google/android/material/timepicker/ChipTextInputComboView;->f:Lcom/google/android/material/textfield/TextInputLayout;

    .line 63
    .line 64
    check-cast v7, Landroid/widget/TextView;

    .line 65
    .line 66
    sget v9, Lcom/google/android/material/R$string;->material_timepicker_minute:I

    .line 67
    .line 68
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    const/4 v9, 0x2

    .line 76
    invoke-virtual {v5, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 77
    .line 78
    .line 79
    sget v5, Lcom/google/android/material/R$string;->material_timepicker_hour:I

    .line 80
    .line 81
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 89
    .line 90
    .line 91
    sget v5, Lcom/google/android/material/R$id;->selection_type:I

    .line 92
    .line 93
    const/16 v7, 0xc

    .line 94
    .line 95
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v3, v5, v7}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setTag(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    sget v5, Lcom/google/android/material/R$id;->selection_type:I

    .line 103
    .line 104
    const/16 v7, 0xa

    .line 105
    .line 106
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {v4, v5, v7}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setTag(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget v5, p2, Lcom/google/android/material/timepicker/TimeModel;->g:I

    .line 114
    .line 115
    if-nez v5, :cond_0

    .line 116
    .line 117
    sget v5, Lcom/google/android/material/R$id;->material_clock_period_toggle:I

    .line 118
    .line 119
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    check-cast v5, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 124
    .line 125
    iput-object v5, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->m:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 126
    .line 127
    new-instance v7, Lcom/google/android/material/timepicker/c;

    .line 128
    .line 129
    const/4 v9, 0x0

    .line 130
    invoke-direct {v7, v9, p0}, Lcom/google/android/material/timepicker/c;-><init>(ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget-object v5, v5, Lcom/google/android/material/button/MaterialButtonToggleGroup;->p:Ljava/util/LinkedHashSet;

    .line 134
    .line 135
    invoke-virtual {v5, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    iget-object v5, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->m:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 139
    .line 140
    const/4 v7, 0x0

    .line 141
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->f()V

    .line 145
    .line 146
    .line 147
    :cond_0
    new-instance v5, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$3;

    .line 148
    .line 149
    invoke-direct {v5, p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$3;-><init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v5}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v5}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    iget-object v5, p2, Lcom/google/android/material/timepicker/TimeModel;->f:Lcom/google/android/material/timepicker/MaxInputValidator;

    .line 159
    .line 160
    iget-object v7, v4, Lcom/google/android/material/timepicker/ChipTextInputComboView;->g:Landroid/widget/EditText;

    .line 161
    .line 162
    invoke-virtual {v7}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    array-length v10, v9

    .line 167
    add-int/lit8 v10, v10, 0x1

    .line 168
    .line 169
    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    check-cast v10, [Landroid/text/InputFilter;

    .line 174
    .line 175
    array-length v9, v9

    .line 176
    aput-object v5, v10, v9

    .line 177
    .line 178
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 179
    .line 180
    .line 181
    iget-object v5, p2, Lcom/google/android/material/timepicker/TimeModel;->c:Lcom/google/android/material/timepicker/MaxInputValidator;

    .line 182
    .line 183
    iget-object v7, v3, Lcom/google/android/material/timepicker/ChipTextInputComboView;->g:Landroid/widget/EditText;

    .line 184
    .line 185
    invoke-virtual {v7}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    array-length v10, v9

    .line 190
    add-int/lit8 v10, v10, 0x1

    .line 191
    .line 192
    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    check-cast v10, [Landroid/text/InputFilter;

    .line 197
    .line 198
    array-length v9, v9

    .line 199
    aput-object v5, v10, v9

    .line 200
    .line 201
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    iput-object v5, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->k:Landroid/widget/EditText;

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    sget v9, Lcom/google/android/material/R$string;->material_timepicker_hour:I

    .line 215
    .line 216
    new-instance v10, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$6;

    .line 217
    .line 218
    invoke-direct {v10, v7, v9}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$6;-><init>(Landroid/content/res/Resources;I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v10}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    iput-object v7, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->l:Landroid/widget/EditText;

    .line 229
    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    sget v10, Lcom/google/android/material/R$string;->material_timepicker_minute:I

    .line 235
    .line 236
    new-instance v11, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$6;

    .line 237
    .line 238
    invoke-direct {v11, v9, v10}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$6;-><init>(Landroid/content/res/Resources;I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v7, v11}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 242
    .line 243
    .line 244
    new-instance v9, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;

    .line 245
    .line 246
    invoke-direct {v9, v4, v3, p2}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;-><init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/TimeModel;)V

    .line 247
    .line 248
    .line 249
    new-instance v10, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$4;

    .line 250
    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 252
    .line 253
    .line 254
    move-result-object v11

    .line 255
    sget v12, Lcom/google/android/material/R$string;->material_hour_selection:I

    .line 256
    .line 257
    invoke-direct {v10, v11, v12, v2, p2}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$4;-><init>(Landroid/content/Context;ILandroid/content/res/Resources;Lcom/google/android/material/timepicker/TimeModel;)V

    .line 258
    .line 259
    .line 260
    iget-object v4, v4, Lcom/google/android/material/timepicker/ChipTextInputComboView;->c:Lcom/google/android/material/chip/Chip;

    .line 261
    .line 262
    invoke-static {v4, v10}, Landroidx/core/view/ViewCompat;->z(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 263
    .line 264
    .line 265
    new-instance v4, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$5;

    .line 266
    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    sget v10, Lcom/google/android/material/R$string;->material_minute_selection:I

    .line 272
    .line 273
    invoke-direct {v4, p1, v10, v2, p2}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$5;-><init>(Landroid/content/Context;ILandroid/content/res/Resources;Lcom/google/android/material/timepicker/TimeModel;)V

    .line 274
    .line 275
    .line 276
    iget-object p1, v3, Lcom/google/android/material/timepicker/ChipTextInputComboView;->c:Lcom/google/android/material/chip/Chip;

    .line 277
    .line 278
    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->z(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, p2}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->e(Lcom/google/android/material/timepicker/TimeModel;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v8}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    const v0, 0x10000005

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 302
    .line 303
    .line 304
    const v0, 0x10000006

    .line 305
    .line 306
    .line 307
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p2, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 317
    .line 318
    .line 319
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->f:Lcom/google/android/material/timepicker/TimeModel;

    .line 2
    .line 3
    iput p1, v0, Lcom/google/android/material/timepicker/TimeModel;->j:I

    .line 4
    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->i:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 15
    .line 16
    invoke-virtual {v3, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0xa

    .line 20
    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    move v1, v2

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->j:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->f()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->c:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->f:Lcom/google/android/material/timepicker/TimeModel;

    .line 8
    .line 9
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->j:I

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->a(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->c:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v2, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    const/16 v1, 0x8

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->f:Lcom/google/android/material/timepicker/TimeModel;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/material/timepicker/TimeModel;->j:I

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    move v1, v4

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v3

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->i:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 17
    .line 18
    .line 19
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->j:I

    .line 20
    .line 21
    const/16 v1, 0xa

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    move v3, v4

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->j:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final e(Lcom/google/android/material/timepicker/TimeModel;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->k:Landroid/widget/EditText;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->h:Landroid/text/TextWatcher;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->l:Landroid/widget/EditText;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->g:Landroid/text/TextWatcher;

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 13
    .line 14
    .line 15
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->c:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 26
    .line 27
    iget v5, p1, Lcom/google/android/material/timepicker/TimeModel;->i:I

    .line 28
    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const/4 v6, 0x1

    .line 34
    new-array v7, v6, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    aput-object v5, v7, v8

    .line 38
    .line 39
    const-string v5, "%02d"

    .line 40
    .line 41
    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-virtual {p1}, Lcom/google/android/material/timepicker/TimeModel;->b()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-array v6, v6, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object p1, v6, v8

    .line 56
    .line 57
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->i:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 62
    .line 63
    iget-object v6, v4, Lcom/google/android/material/timepicker/ChipTextInputComboView;->h:Landroid/text/TextWatcher;

    .line 64
    .line 65
    iget-object v8, v4, Lcom/google/android/material/timepicker/ChipTextInputComboView;->g:Landroid/widget/EditText;

    .line 66
    .line 67
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    invoke-static {v9, v7, v5}, Lcom/google/android/material/timepicker/TimeModel;->a(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    iget-object v4, v4, Lcom/google/android/material/timepicker/ChipTextInputComboView;->c:Lcom/google/android/material/chip/Chip;

    .line 76
    .line 77
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-nez v4, :cond_0

    .line 85
    .line 86
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    .line 94
    .line 95
    :cond_0
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->j:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 96
    .line 97
    iget-object v6, v4, Lcom/google/android/material/timepicker/ChipTextInputComboView;->h:Landroid/text/TextWatcher;

    .line 98
    .line 99
    iget-object v7, v4, Lcom/google/android/material/timepicker/ChipTextInputComboView;->g:Landroid/widget/EditText;

    .line 100
    .line 101
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    invoke-static {v8, p1, v5}, Lcom/google/android/material/timepicker/TimeModel;->a(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-object v4, v4, Lcom/google/android/material/timepicker/ChipTextInputComboView;->c:Lcom/google/android/material/chip/Chip;

    .line 110
    .line 111
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-nez v4, :cond_1

    .line 119
    .line 120
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    .line 128
    .line 129
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->f()V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->m:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->f:Lcom/google/android/material/timepicker/TimeModel;

    .line 7
    .line 8
    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->k:I

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    sget v1, Lcom/google/android/material/R$id;->material_clock_period_am_button:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    sget v1, Lcom/google/android/material/R$id;->material_clock_period_pm_button:I

    .line 16
    .line 17
    :goto_0
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f(IZ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->f:Lcom/google/android/material/timepicker/TimeModel;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->e(Lcom/google/android/material/timepicker/TimeModel;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
